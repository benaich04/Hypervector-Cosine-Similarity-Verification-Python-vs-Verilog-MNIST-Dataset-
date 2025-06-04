// -----------------------------------------------------------------------------
// File: tb_FP_Cosine_Similarity.v
// Description:
//   Testbench for FP_Cosine_Similarity #(N=4). Applies five distinct test-vector
//   pairs, waits for cos_valid, and prints cos_theta in 32-bit IEEE-754 hex.
// -----------------------------------------------------------------------------

`timescale 1ns / 1ps

module tb_FP_Cosine_Similarity;

    // ------------------------------------------------------------------------
    // 1) Parameters & signals
    // ------------------------------------------------------------------------
    localparam integer N = 100;

    // Clock & reset
    reg clk;
    reg rst;

    // Flattened inputs: 4 floats each ? 4 × 32 = 128 bits
    reg [32*N-1:0] A_flat;
    reg [32*N-1:0] B_flat;

    // Valid flags for each element
    reg [N-1:0] A_valid_in;
    reg [N-1:0] B_valid_in;

    // Outputs from DUT
    wire [31:0] cos_theta;
    wire        cos_valid;

    // ------------------------------------------------------------------------
    // 2) Instantiate the DUT
    // ------------------------------------------------------------------------
    FP_Cosine_Similarity #(
        .N(N)
    ) dut (
        .clk         (clk),
        .rst         (rst),
        .A_flat      (A_flat),
        .B_flat      (B_flat),
        .A_valid_in  (A_valid_in),
        .B_valid_in  (B_valid_in),
        .cos_theta   (cos_theta),
        .cos_valid   (cos_valid)
    );

    // ------------------------------------------------------------------------
    // 3) Clock generation: 10 ns period (100 MHz)
    // ------------------------------------------------------------------------
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // ------------------------------------------------------------------------
    // 4) Reset task: assert rst=1 for two full clock cycles
    // ------------------------------------------------------------------------
    task reset_dut;
    begin
        rst = 1;
        @(posedge clk);
        @(posedge clk);
        rst = 0;
        @(posedge clk);
    end
    endtask

    // ------------------------------------------------------------------------
    // 5) Helper: extract 32-bit hex for printing
    // ------------------------------------------------------------------------
    function [31:0] get_cos_hex;
        input [31:0] v;
        begin
            get_cos_hex = v;
        end
    endfunction

    // ------------------------------------------------------------------------
    // 6) Main test sequence
    // ------------------------------------------------------------------------
    integer case_num;

    initial begin
        // Initialize all signals
        rst         = 1;
        A_flat      = {32*N{1'b0}};
        B_flat      = {32*N{1'b0}};
        A_valid_in  = {N{1'b0}};
        B_valid_in  = {N{1'b0}};
        #20;          // wait 20 ns
        rst = 0;
        #10;

        // ------- TEST 1: e1 · e1 ? cos = 1.0 -------
        // A = [1.0, 0.0, 0.0, 0.0], B = [1.0, 0.0, 0.0, 0.0]
        // 1.0 = 0x3F800000, 0.0 = 0x00000000
        reset_dut;
		  A_flat = {(N-1){32'h3F800000}};
        B_flat = A_flat;       // same unit vector
        A_valid_in = {N{1'b1}};
		  B_valid_in = {N{1'b1}};


        case_num = 1;
        $display("\n---- Test Case %0d: e1 · e1  (cos = 1.0) ----", case_num);
        @(posedge clk);
        wait(cos_valid);
        #1;
        $display("  cos_theta = 0x%h  (expected 0x3F800000 for 1.0)", get_cos_hex(cos_theta));
        A_valid_in = {N{1'b0}};
		  B_valid_in = {N{1'b0}};



        // All done
        $display("\n---- All test cases completed ----\n");
        #20;
        $stop;
    end

endmodule
