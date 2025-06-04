`timescale 1ns / 1ps

module Cos_Similarity_MEM_TB;

    parameter integer N = 100;

    reg clk;
    reg rst;
    reg [32*N-1:0] A_flat;
    reg [32*N-1:0] B_flat;
    reg [N-1:0] A_valid_in;
    reg [N-1:0] B_valid_in;
    wire [31:0] cos_theta;
    wire cos_valid;

    reg [31:0] A_mem [0:N-1];
    reg [31:0] B_mem_0 [0:N-1];
    reg [31:0] B_mem_1 [0:N-1];
    reg [31:0] B_mem_2 [0:N-1];
    reg [31:0] B_mem_3 [0:N-1];
    reg [31:0] B_mem_4 [0:N-1];
    reg [31:0] B_mem_5 [0:N-1];
    reg [31:0] B_mem_6 [0:N-1];
    reg [31:0] B_mem_7 [0:N-1];
    reg [31:0] B_mem_8 [0:N-1];
    reg [31:0] B_mem_9 [0:N-1];

    integer i;
    integer class_idx;

    FP_Cosine_Similarity uut (
        .clk(clk), 
        .rst(rst), 
        .A_flat(A_flat), 
        .B_flat(B_flat), 
        .A_valid_in(A_valid_in), 
        .B_valid_in(B_valid_in), 
        .cos_theta(cos_theta), 
        .cos_valid(cos_valid)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 0;
        A_flat = 0;
        B_flat = 0;
        A_valid_in = 0;
        B_valid_in = 0;
        #100;
        rst = 1;
        #20;
        rst = 0;

        // Load files
        $readmemh("mem_files/test_sample_1.mem", A_mem);
        $readmemh("mem_files/class_0_hypervector.mem", B_mem_0);
        $readmemh("mem_files/class_1_hypervector.mem", B_mem_1);
        $readmemh("mem_files/class_2_hypervector.mem", B_mem_2);
        $readmemh("mem_files/class_3_hypervector.mem", B_mem_3);
        $readmemh("mem_files/class_4_hypervector.mem", B_mem_4);
        $readmemh("mem_files/class_5_hypervector.mem", B_mem_5);
        $readmemh("mem_files/class_6_hypervector.mem", B_mem_6);
        $readmemh("mem_files/class_7_hypervector.mem", B_mem_7);
        $readmemh("mem_files/class_8_hypervector.mem", B_mem_8);
        $readmemh("mem_files/class_9_hypervector.mem", B_mem_9);

        // Flatten A once
        for (i = 0; i < N; i = i + 1)
            A_flat[32*i +: 32] = A_mem[i];
        A_valid_in = {N{1'b1}};

        // Select which class to simulate:
        class_idx = 7; // <<< Change this value to select any class

        case (class_idx)
            0: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_0[i];
            1: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_1[i];
            2: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_2[i];
            3: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_3[i];
            4: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_4[i];
            5: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_5[i];
            6: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_6[i];
            7: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_7[i];
            8: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_8[i];
            9: for (i = 0; i < N; i = i + 1) B_flat[32*i +: 32] = B_mem_9[i];
        endcase

        B_valid_in = {N{1'b1}};

        // Wait for valid output
        wait (cos_valid == 1);
        $display("Class %0d: Cosine Similarity (IEEE-754 Hex): %h", class_idx, cos_theta);
        $stop;
    end

endmodule
