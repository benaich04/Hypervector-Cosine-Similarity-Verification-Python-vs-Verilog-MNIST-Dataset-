`timescale 1ns / 1ps

// -----------------------------------------------------------------------------
// File: FP_Cosine_Similarity.v
// Description: 
//   Parameterized Verilog module to compute cosine similarity (cos ?) between
//   two N-element floating-point vectors A and B.  We compute:
//
//       dot   = S_{i=0..N-1} (A[i] * B[i])
//       normA = sqrt( S_{i=0..N-1} (A[i]^2) )
//       normB = sqrt( S_{i=0..N-1} (B[i]^2) )
//       cos?  = dot / (normA * normB)
//
//   Internally, we use Xilinx FP IP cores (FP_Multiplier, FP_Adder, FP_Sqrt, 
//   FP_Divider).  All cores are held in reset when rst=1 (active-high).
// ----------------------------------------------------------------------------- 

module FP_Cosine_Similarity
#(
    parameter integer N = 4    // Number of elements in each vector
)
(
    input  wire          clk,             // System clock
    input  wire          rst,             // Active-high synchronous reset
    input  wire [32*N-1:0] A_flat,         // { A[0], A[1], …, A[N-1] } (each 32-bit IEEE-754)
    input  wire [32*N-1:0] B_flat,         // { B[0], B[1], …, B[N-1] }
    input  wire [N-1:0]  A_valid_in,       // One valid bit per A[i]
    input  wire [N-1:0]  B_valid_in,       // One valid bit per B[i]
    output wire [31:0]   cos_theta,        // Final 32-bit IEEE-754 result = dot / (||A||·||B||)
    output wire          cos_valid         // Goes high when cos_theta is stable
);

    //------------------------------------------------------------------------
    // 1) Unpack the flattened inputs into arrays A[i], B[i]:
    //    A[i] = A_flat[32*i +: 32], B[i] = B_flat[32*i +: 32]
    //------------------------------------------------------------------------
    genvar i;
    wire [31:0] A [0:N-1];
    wire [31:0] B [0:N-1];
    generate
        for (i = 0; i < N; i = i + 1) begin : UNPACK
            assign A[i] = A_flat[32*i +: 32];
            assign B[i] = B_flat[32*i +: 32];
        end
    endgenerate

    //------------------------------------------------------------------------
    // 2) Dot-product pipeline:
    //    2a) Parallel multipliers: P_AB[i] = A[i] * B[i]
    //    2b) Chain N-1 adders to sum P_AB[i] ? dot_sum
    //------------------------------------------------------------------------
    wire [31:0] P_AB       [0:N-1];
    wire        P_AB_valid [0:N-1];
    wire [31:0] sum_AB     [0:N-2];
    wire        sum_AB_valid[0:N-2];

    // 2a) N parallel FP multipliers for A[i]*B[i]
    generate
        for (i = 0; i < N; i = i + 1) begin : MUL_AB_LOOP
            FP_Multiplier mul_ab (
                .aclk                (clk),
                .aresetn             (~rst),
                .s_axis_a_tvalid     (A_valid_in[i]),
                .s_axis_a_tdata      (A[i]),
                .s_axis_b_tvalid     (B_valid_in[i]),
                .s_axis_b_tdata      (B[i]),
                .m_axis_result_tvalid(P_AB_valid[i]),
                .m_axis_result_tdata (P_AB[i])
            );
        end
    endgenerate

    // 2b) If N==1, dot_result = P_AB[0]. Otherwise, chain adders over P_AB[i].
    wire [31:0] dot_result;
    wire        dot_valid;

    generate
        if (N == 1) begin : DOT_SINGLE
            assign dot_result = P_AB[0];
            assign dot_valid  = P_AB_valid[0];
        end else begin : DOT_CHAIN
            // First adder: sum_AB[0] = P_AB[0] + P_AB[1]
            FP_Adder add0 (
                .aclk                 (clk),
                .aresetn              (~rst),
                .s_axis_a_tvalid      (P_AB_valid[0]),
                .s_axis_a_tdata       (P_AB[0]),
                .s_axis_b_tvalid      (P_AB_valid[1]),
                .s_axis_b_tdata       (P_AB[1]),
                .m_axis_result_tvalid (sum_AB_valid[0]),
                .m_axis_result_tdata  (sum_AB[0])
            );

            // Chain adders for i = 2..N-1
            genvar j;
            for (j = 2; j < N; j = j + 1) begin : DOT_ADD_CHAIN
                FP_Adder addj (
                    .aclk                 (clk),
                    .aresetn              (~rst),
                    .s_axis_a_tvalid      (sum_AB_valid[j-2]),
                    .s_axis_a_tdata       (sum_AB[j-2]),
                    .s_axis_b_tvalid      (P_AB_valid[j]),
                    .s_axis_b_tdata       (P_AB[j]),
                    .m_axis_result_tvalid (sum_AB_valid[j-1]),
                    .m_axis_result_tdata  (sum_AB[j-1])
                );
            end

            // The final adder output is sum_AB[N-2]
            assign dot_result = sum_AB[N-2];
            assign dot_valid  = sum_AB_valid[N-2];
        end
    endgenerate


    //------------------------------------------------------------------------
    // 3) Norm of A pipeline: 
    //    3a) Compute A[i]^2 via N multipliers ? P_AA[i]
    //    3b) Chain N-1 adders to sum P_AA[i] ? sum_AA
    //    3c) FP_Sqrt on sum_AA ? normA
    //------------------------------------------------------------------------
    wire [31:0] P_AA        [0:N-1];
    wire        P_AA_valid  [0:N-1];
    wire [31:0] sum_AA      [0:N-2];
    wire        sum_AA_valid[0:N-2];
    wire [31:0] normA;
    wire        normA_valid;

    // 3a) N parallel multipliers for A[i]*A[i]
    generate
        for (i = 0; i < N; i = i + 1) begin : MUL_AA_LOOP
            FP_Multiplier mul_aa (
                .aclk                (clk),
                .aresetn             (~rst),
                .s_axis_a_tvalid     (A_valid_in[i]),
                .s_axis_a_tdata      (A[i]),
                .s_axis_b_tvalid     (A_valid_in[i]),
                .s_axis_b_tdata      (A[i]),
                .m_axis_result_tvalid(P_AA_valid[i]),
                .m_axis_result_tdata (P_AA[i])
            );
        end
    endgenerate

    // 3b) Sum the squares: if N==1, sum_AA = P_AA[0], else chain adders
    wire [31:0] sum_sqA;
    wire        sum_sqA_valid;

    generate
        if (N == 1) begin : NORM_A_SINGLE
            assign sum_sqA       = P_AA[0];
            assign sum_sqA_valid = P_AA_valid[0];
        end else begin : NORM_A_CHAIN
            // First adder: sum_AA[0] = P_AA[0] + P_AA[1]
            FP_Adder adda0 (
                .aclk                 (clk),
                .aresetn              (~rst),
                .s_axis_a_tvalid      (P_AA_valid[0]),
                .s_axis_a_tdata       (P_AA[0]),
                .s_axis_b_tvalid      (P_AA_valid[1]),
                .s_axis_b_tdata       (P_AA[1]),
                .m_axis_result_tvalid (sum_AA_valid[0]),
                .m_axis_result_tdata  (sum_AA[0])
            );

            // Chain adders for i = 2..N-1
            genvar kA;
            for (kA = 2; kA < N; kA = kA + 1) begin : NORM_A_ADD_CHAIN
                FP_Adder addak (
                    .aclk                 (clk),
                    .aresetn              (~rst),
                    .s_axis_a_tvalid      (sum_AA_valid[kA-2]),
                    .s_axis_a_tdata       (sum_AA[kA-2]),
                    .s_axis_b_tvalid      (P_AA_valid[kA]),
                    .s_axis_b_tdata       (P_AA[kA]),
                    .m_axis_result_tvalid (sum_AA_valid[kA-1]),
                    .m_axis_result_tdata  (sum_AA[kA-1])
                );
            end

            // Final sum of squares is sum_AA[N-2]
            assign sum_sqA       = sum_AA[N-2];
            assign sum_sqA_valid = sum_AA_valid[N-2];
        end
    endgenerate

    // 3c) Square-root on sum_sqA ? normA
    FP_Sqrt sqrtA (
        .aclk                 (clk),
        .aresetn              (~rst),
        .s_axis_a_tvalid      (sum_sqA_valid),
        .s_axis_a_tdata       (sum_sqA),
        .m_axis_result_tvalid (normA_valid),
        .m_axis_result_tdata  (normA)
    );


    //------------------------------------------------------------------------
    // 4) Norm of B pipeline (identical to A):
    //    4a) Compute B[i]^2 ? P_BB[i]
    //    4b) Sum via adders ? sum_BB
    //    4c) FP_Sqrt on sum_BB ? normB
    //------------------------------------------------------------------------
    wire [31:0] P_BB        [0:N-1];
    wire        P_BB_valid  [0:N-1];
    wire [31:0] sum_BB      [0:N-2];
    wire        sum_BB_valid[0:N-2];
    wire [31:0] normB;
    wire        normB_valid;

    // 4a) N parallel multipliers for B[i]*B[i]
    generate
        for (i = 0; i < N; i = i + 1) begin : MUL_BB_LOOP
            FP_Multiplier mul_bb (
                .aclk                (clk),
                .aresetn             (~rst),
                .s_axis_a_tvalid     (B_valid_in[i]),
                .s_axis_a_tdata      (B[i]),
                .s_axis_b_tvalid     (B_valid_in[i]),
                .s_axis_b_tdata      (B[i]),
                .m_axis_result_tvalid(P_BB_valid[i]),
                .m_axis_result_tdata (P_BB[i])
            );
        end
    endgenerate

    // 4b) Sum of squares for B
    wire [31:0] sum_sqB;
    wire        sum_sqB_valid;

    generate
        if (N == 1) begin : NORM_B_SINGLE
            assign sum_sqB       = P_BB[0];
            assign sum_sqB_valid = P_BB_valid[0];
        end else begin : NORM_B_CHAIN
            // First adder: sum_BB[0] = P_BB[0] + P_BB[1]
            FP_Adder addb0 (
                .aclk                 (clk),
                .aresetn              (~rst),
                .s_axis_a_tvalid      (P_BB_valid[0]),
                .s_axis_a_tdata       (P_BB[0]),
                .s_axis_b_tvalid      (P_BB_valid[1]),
                .s_axis_b_tdata       (P_BB[1]),
                .m_axis_result_tvalid (sum_BB_valid[0]),
                .m_axis_result_tdata  (sum_BB[0])
            );

            // Chain for i = 2..N-1
            genvar kB;
            for (kB = 2; kB < N; kB = kB + 1) begin : NORM_B_ADD_CHAIN
                FP_Adder addbk (
                    .aclk                 (clk),
                    .aresetn              (~rst),
                    .s_axis_a_tvalid      (sum_BB_valid[kB-2]),
                    .s_axis_a_tdata       (sum_BB[kB-2]),
                    .s_axis_b_tvalid      (P_BB_valid[kB]),
                    .s_axis_b_tdata       (P_BB[kB]),
                    .m_axis_result_tvalid (sum_BB_valid[kB-1]),
                    .m_axis_result_tdata  (sum_BB[kB-1])
                );
            end

            assign sum_sqB       = sum_BB[N-2];
            assign sum_sqB_valid = sum_BB_valid[N-2];
        end
    endgenerate

    // 4c) Square-root on sum_sqB ? normB
    FP_Sqrt sqrtB (
        .aclk                 (clk),
        .aresetn              (~rst),
        .s_axis_a_tvalid      (sum_sqB_valid),
        .s_axis_a_tdata       (sum_sqB),
        .m_axis_result_tvalid (normB_valid),
        .m_axis_result_tdata  (normB)
    );


    //------------------------------------------------------------------------
    // 5) Multiply normA * normB ? denom = norm_prod
    //------------------------------------------------------------------------
    wire [31:0] norm_prod;
    wire        norm_prod_valid;

    FP_Multiplier mul_norm (
        .aclk                 (clk),
        .aresetn              (~rst),
        .s_axis_a_tvalid      (normA_valid),
        .s_axis_a_tdata       (normA),
        .s_axis_b_tvalid      (normB_valid),
        .s_axis_b_tdata       (normB),
        .m_axis_result_tvalid (norm_prod_valid),
        .m_axis_result_tdata  (norm_prod)
    );


    //------------------------------------------------------------------------
    // 6) Divide dot_result by norm_prod ? cos_theta
    //------------------------------------------------------------------------
    // We only start dividing when BOTH dot_valid and norm_prod_valid are high.
    // The simplest approach is to gate both into the divider's valid inputs:
    wire start_div = dot_valid & norm_prod_valid;

    FP_Divider div_cos (
        .aclk                   (clk),
        .aresetn                (~rst),
        .s_axis_a_tvalid        (start_div),     // numerator valid
        .s_axis_a_tdata         (dot_result),    // numerator = dot_result
        .s_axis_b_tvalid        (start_div),     // denominator valid
        .s_axis_b_tdata         (norm_prod),     // denominator = norm_prod
        .m_axis_result_tvalid   (cos_valid),     // goes high when output is ready
        .m_axis_result_tdata    (cos_theta)      // 32-bit IEEE-754 cos ?
    );

endmodule
