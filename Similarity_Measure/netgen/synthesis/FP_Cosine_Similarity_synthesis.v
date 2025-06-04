////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: FP_Cosine_Similarity_synthesis.v
// /___/   /\     Timestamp: Mon Jun 02 09:51:28 2025
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim FP_Cosine_Similarity.ngc FP_Cosine_Similarity_synthesis.v 
// Device	: xc7a100t-1-csg324
// Input file	: FP_Cosine_Similarity.ngc
// Output file	: T:\benmed\Similarity_Measure\Similarity_Measure\netgen\synthesis\FP_Cosine_Similarity_synthesis.v
// # of Modules	: 1
// Design Name	: FP_Cosine_Similarity
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module FP_Cosine_Similarity (
  CLK, RST, COS_VALID, A_FLAT, B_FLAT, A_VALID_IN, B_VALID_IN, COS_THETA
)/* synthesis syn_black_box syn_noprune=1 */;
  input CLK;
  input RST;
  output COS_VALID;
  input [127 : 0] A_FLAT;
  input [127 : 0] B_FLAT;
  input [3 : 0] A_VALID_IN;
  input [3 : 0] B_VALID_IN;
  output [31 : 0] COS_THETA;
  
  // synthesis translate_off
  
  wire A_FLAT_31_IBUF_0;
  wire A_FLAT_30_IBUF_1;
  wire A_FLAT_29_IBUF_2;
  wire A_FLAT_28_IBUF_3;
  wire A_FLAT_27_IBUF_4;
  wire A_FLAT_26_IBUF_5;
  wire A_FLAT_25_IBUF_6;
  wire A_FLAT_24_IBUF_7;
  wire A_FLAT_23_IBUF_8;
  wire A_FLAT_22_IBUF_9;
  wire A_FLAT_21_IBUF_10;
  wire A_FLAT_20_IBUF_11;
  wire A_FLAT_19_IBUF_12;
  wire A_FLAT_18_IBUF_13;
  wire A_FLAT_17_IBUF_14;
  wire A_FLAT_16_IBUF_15;
  wire A_FLAT_15_IBUF_16;
  wire A_FLAT_14_IBUF_17;
  wire A_FLAT_13_IBUF_18;
  wire A_FLAT_12_IBUF_19;
  wire A_FLAT_11_IBUF_20;
  wire A_FLAT_10_IBUF_21;
  wire A_FLAT_9_IBUF_22;
  wire A_FLAT_8_IBUF_23;
  wire A_FLAT_7_IBUF_24;
  wire A_FLAT_6_IBUF_25;
  wire A_FLAT_5_IBUF_26;
  wire A_FLAT_4_IBUF_27;
  wire A_FLAT_3_IBUF_28;
  wire A_FLAT_2_IBUF_29;
  wire A_FLAT_1_IBUF_30;
  wire A_FLAT_0_IBUF_31;
  wire A_FLAT_63_IBUF_32;
  wire A_FLAT_62_IBUF_33;
  wire A_FLAT_61_IBUF_34;
  wire A_FLAT_60_IBUF_35;
  wire A_FLAT_59_IBUF_36;
  wire A_FLAT_58_IBUF_37;
  wire A_FLAT_57_IBUF_38;
  wire A_FLAT_56_IBUF_39;
  wire A_FLAT_55_IBUF_40;
  wire A_FLAT_54_IBUF_41;
  wire A_FLAT_53_IBUF_42;
  wire A_FLAT_52_IBUF_43;
  wire A_FLAT_51_IBUF_44;
  wire A_FLAT_50_IBUF_45;
  wire A_FLAT_49_IBUF_46;
  wire A_FLAT_48_IBUF_47;
  wire A_FLAT_47_IBUF_48;
  wire A_FLAT_46_IBUF_49;
  wire A_FLAT_45_IBUF_50;
  wire A_FLAT_44_IBUF_51;
  wire A_FLAT_43_IBUF_52;
  wire A_FLAT_42_IBUF_53;
  wire A_FLAT_41_IBUF_54;
  wire A_FLAT_40_IBUF_55;
  wire A_FLAT_39_IBUF_56;
  wire A_FLAT_38_IBUF_57;
  wire A_FLAT_37_IBUF_58;
  wire A_FLAT_36_IBUF_59;
  wire A_FLAT_35_IBUF_60;
  wire A_FLAT_34_IBUF_61;
  wire A_FLAT_33_IBUF_62;
  wire A_FLAT_32_IBUF_63;
  wire A_FLAT_95_IBUF_64;
  wire A_FLAT_94_IBUF_65;
  wire A_FLAT_93_IBUF_66;
  wire A_FLAT_92_IBUF_67;
  wire A_FLAT_91_IBUF_68;
  wire A_FLAT_90_IBUF_69;
  wire A_FLAT_89_IBUF_70;
  wire A_FLAT_88_IBUF_71;
  wire A_FLAT_87_IBUF_72;
  wire A_FLAT_86_IBUF_73;
  wire A_FLAT_85_IBUF_74;
  wire A_FLAT_84_IBUF_75;
  wire A_FLAT_83_IBUF_76;
  wire A_FLAT_82_IBUF_77;
  wire A_FLAT_81_IBUF_78;
  wire A_FLAT_80_IBUF_79;
  wire A_FLAT_79_IBUF_80;
  wire A_FLAT_78_IBUF_81;
  wire A_FLAT_77_IBUF_82;
  wire A_FLAT_76_IBUF_83;
  wire A_FLAT_75_IBUF_84;
  wire A_FLAT_74_IBUF_85;
  wire A_FLAT_73_IBUF_86;
  wire A_FLAT_72_IBUF_87;
  wire A_FLAT_71_IBUF_88;
  wire A_FLAT_70_IBUF_89;
  wire A_FLAT_69_IBUF_90;
  wire A_FLAT_68_IBUF_91;
  wire A_FLAT_67_IBUF_92;
  wire A_FLAT_66_IBUF_93;
  wire A_FLAT_65_IBUF_94;
  wire A_FLAT_64_IBUF_95;
  wire A_FLAT_127_IBUF_96;
  wire A_FLAT_126_IBUF_97;
  wire A_FLAT_125_IBUF_98;
  wire A_FLAT_124_IBUF_99;
  wire A_FLAT_123_IBUF_100;
  wire A_FLAT_122_IBUF_101;
  wire A_FLAT_121_IBUF_102;
  wire A_FLAT_120_IBUF_103;
  wire A_FLAT_119_IBUF_104;
  wire A_FLAT_118_IBUF_105;
  wire A_FLAT_117_IBUF_106;
  wire A_FLAT_116_IBUF_107;
  wire A_FLAT_115_IBUF_108;
  wire A_FLAT_114_IBUF_109;
  wire A_FLAT_113_IBUF_110;
  wire A_FLAT_112_IBUF_111;
  wire A_FLAT_111_IBUF_112;
  wire A_FLAT_110_IBUF_113;
  wire A_FLAT_109_IBUF_114;
  wire A_FLAT_108_IBUF_115;
  wire A_FLAT_107_IBUF_116;
  wire A_FLAT_106_IBUF_117;
  wire A_FLAT_105_IBUF_118;
  wire A_FLAT_104_IBUF_119;
  wire A_FLAT_103_IBUF_120;
  wire A_FLAT_102_IBUF_121;
  wire A_FLAT_101_IBUF_122;
  wire A_FLAT_100_IBUF_123;
  wire A_FLAT_99_IBUF_124;
  wire A_FLAT_98_IBUF_125;
  wire A_FLAT_97_IBUF_126;
  wire A_FLAT_96_IBUF_127;
  wire B_FLAT_31_IBUF_128;
  wire B_FLAT_30_IBUF_129;
  wire B_FLAT_29_IBUF_130;
  wire B_FLAT_28_IBUF_131;
  wire B_FLAT_27_IBUF_132;
  wire B_FLAT_26_IBUF_133;
  wire B_FLAT_25_IBUF_134;
  wire B_FLAT_24_IBUF_135;
  wire B_FLAT_23_IBUF_136;
  wire B_FLAT_22_IBUF_137;
  wire B_FLAT_21_IBUF_138;
  wire B_FLAT_20_IBUF_139;
  wire B_FLAT_19_IBUF_140;
  wire B_FLAT_18_IBUF_141;
  wire B_FLAT_17_IBUF_142;
  wire B_FLAT_16_IBUF_143;
  wire B_FLAT_15_IBUF_144;
  wire B_FLAT_14_IBUF_145;
  wire B_FLAT_13_IBUF_146;
  wire B_FLAT_12_IBUF_147;
  wire B_FLAT_11_IBUF_148;
  wire B_FLAT_10_IBUF_149;
  wire B_FLAT_9_IBUF_150;
  wire B_FLAT_8_IBUF_151;
  wire B_FLAT_7_IBUF_152;
  wire B_FLAT_6_IBUF_153;
  wire B_FLAT_5_IBUF_154;
  wire B_FLAT_4_IBUF_155;
  wire B_FLAT_3_IBUF_156;
  wire B_FLAT_2_IBUF_157;
  wire B_FLAT_1_IBUF_158;
  wire B_FLAT_0_IBUF_159;
  wire B_FLAT_63_IBUF_160;
  wire B_FLAT_62_IBUF_161;
  wire B_FLAT_61_IBUF_162;
  wire B_FLAT_60_IBUF_163;
  wire B_FLAT_59_IBUF_164;
  wire B_FLAT_58_IBUF_165;
  wire B_FLAT_57_IBUF_166;
  wire B_FLAT_56_IBUF_167;
  wire B_FLAT_55_IBUF_168;
  wire B_FLAT_54_IBUF_169;
  wire B_FLAT_53_IBUF_170;
  wire B_FLAT_52_IBUF_171;
  wire B_FLAT_51_IBUF_172;
  wire B_FLAT_50_IBUF_173;
  wire B_FLAT_49_IBUF_174;
  wire B_FLAT_48_IBUF_175;
  wire B_FLAT_47_IBUF_176;
  wire B_FLAT_46_IBUF_177;
  wire B_FLAT_45_IBUF_178;
  wire B_FLAT_44_IBUF_179;
  wire B_FLAT_43_IBUF_180;
  wire B_FLAT_42_IBUF_181;
  wire B_FLAT_41_IBUF_182;
  wire B_FLAT_40_IBUF_183;
  wire B_FLAT_39_IBUF_184;
  wire B_FLAT_38_IBUF_185;
  wire B_FLAT_37_IBUF_186;
  wire B_FLAT_36_IBUF_187;
  wire B_FLAT_35_IBUF_188;
  wire B_FLAT_34_IBUF_189;
  wire B_FLAT_33_IBUF_190;
  wire B_FLAT_32_IBUF_191;
  wire B_FLAT_95_IBUF_192;
  wire B_FLAT_94_IBUF_193;
  wire B_FLAT_93_IBUF_194;
  wire B_FLAT_92_IBUF_195;
  wire B_FLAT_91_IBUF_196;
  wire B_FLAT_90_IBUF_197;
  wire B_FLAT_89_IBUF_198;
  wire B_FLAT_88_IBUF_199;
  wire B_FLAT_87_IBUF_200;
  wire B_FLAT_86_IBUF_201;
  wire B_FLAT_85_IBUF_202;
  wire B_FLAT_84_IBUF_203;
  wire B_FLAT_83_IBUF_204;
  wire B_FLAT_82_IBUF_205;
  wire B_FLAT_81_IBUF_206;
  wire B_FLAT_80_IBUF_207;
  wire B_FLAT_79_IBUF_208;
  wire B_FLAT_78_IBUF_209;
  wire B_FLAT_77_IBUF_210;
  wire B_FLAT_76_IBUF_211;
  wire B_FLAT_75_IBUF_212;
  wire B_FLAT_74_IBUF_213;
  wire B_FLAT_73_IBUF_214;
  wire B_FLAT_72_IBUF_215;
  wire B_FLAT_71_IBUF_216;
  wire B_FLAT_70_IBUF_217;
  wire B_FLAT_69_IBUF_218;
  wire B_FLAT_68_IBUF_219;
  wire B_FLAT_67_IBUF_220;
  wire B_FLAT_66_IBUF_221;
  wire B_FLAT_65_IBUF_222;
  wire B_FLAT_64_IBUF_223;
  wire B_FLAT_127_IBUF_224;
  wire B_FLAT_126_IBUF_225;
  wire B_FLAT_125_IBUF_226;
  wire B_FLAT_124_IBUF_227;
  wire B_FLAT_123_IBUF_228;
  wire B_FLAT_122_IBUF_229;
  wire B_FLAT_121_IBUF_230;
  wire B_FLAT_120_IBUF_231;
  wire B_FLAT_119_IBUF_232;
  wire B_FLAT_118_IBUF_233;
  wire B_FLAT_117_IBUF_234;
  wire B_FLAT_116_IBUF_235;
  wire B_FLAT_115_IBUF_236;
  wire B_FLAT_114_IBUF_237;
  wire B_FLAT_113_IBUF_238;
  wire B_FLAT_112_IBUF_239;
  wire B_FLAT_111_IBUF_240;
  wire B_FLAT_110_IBUF_241;
  wire B_FLAT_109_IBUF_242;
  wire B_FLAT_108_IBUF_243;
  wire B_FLAT_107_IBUF_244;
  wire B_FLAT_106_IBUF_245;
  wire B_FLAT_105_IBUF_246;
  wire B_FLAT_104_IBUF_247;
  wire B_FLAT_103_IBUF_248;
  wire B_FLAT_102_IBUF_249;
  wire B_FLAT_101_IBUF_250;
  wire B_FLAT_100_IBUF_251;
  wire B_FLAT_99_IBUF_252;
  wire B_FLAT_98_IBUF_253;
  wire B_FLAT_97_IBUF_254;
  wire B_FLAT_96_IBUF_255;
  wire A_VALID_IN_0_IBUF_256;
  wire A_VALID_IN_1_IBUF_257;
  wire A_VALID_IN_2_IBUF_258;
  wire A_VALID_IN_3_IBUF_259;
  wire B_VALID_IN_0_IBUF_260;
  wire B_VALID_IN_1_IBUF_261;
  wire B_VALID_IN_2_IBUF_262;
  wire B_VALID_IN_3_IBUF_263;
  wire CLK_BUFGP_264;
  wire RST_IBUF_265;
  wire NORMA_VALID;
  wire NORMB_VALID;
  wire NORM_PROD_VALID;
  wire COS_THETA_31_OBUF_1058;
  wire COS_THETA_30_OBUF_1059;
  wire COS_THETA_29_OBUF_1060;
  wire COS_THETA_28_OBUF_1061;
  wire COS_THETA_27_OBUF_1062;
  wire COS_THETA_26_OBUF_1063;
  wire COS_THETA_25_OBUF_1064;
  wire COS_THETA_24_OBUF_1065;
  wire COS_THETA_23_OBUF_1066;
  wire COS_THETA_22_OBUF_1067;
  wire COS_THETA_21_OBUF_1068;
  wire COS_THETA_20_OBUF_1069;
  wire COS_THETA_19_OBUF_1070;
  wire COS_THETA_18_OBUF_1071;
  wire COS_THETA_17_OBUF_1072;
  wire COS_THETA_16_OBUF_1073;
  wire COS_THETA_15_OBUF_1074;
  wire COS_THETA_14_OBUF_1075;
  wire COS_THETA_13_OBUF_1076;
  wire COS_THETA_12_OBUF_1077;
  wire COS_THETA_11_OBUF_1078;
  wire COS_THETA_10_OBUF_1079;
  wire COS_THETA_9_OBUF_1080;
  wire COS_THETA_8_OBUF_1081;
  wire COS_THETA_7_OBUF_1082;
  wire COS_THETA_6_OBUF_1083;
  wire COS_THETA_5_OBUF_1084;
  wire COS_THETA_4_OBUF_1085;
  wire COS_THETA_3_OBUF_1086;
  wire COS_THETA_2_OBUF_1087;
  wire COS_THETA_1_OBUF_1088;
  wire COS_THETA_0_OBUF_1089;
  wire COS_VALID_OBUF_1090;
  wire RST_INV_25_O;
  wire START_DIV;
  wire NLW_MUL_NORM_M_AXIS_RESULT_TREADY_UNCONNECTED;
  wire NLW_MUL_NORM_S_AXIS_A_TREADY_UNCONNECTED;
  wire NLW_MUL_NORM_S_AXIS_B_TREADY_UNCONNECTED;
  wire \NLW_MUL_BB_LOOP[3].MUL_BB_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[3].MUL_BB_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[3].MUL_BB_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[2].MUL_BB_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[2].MUL_BB_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[2].MUL_BB_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[1].MUL_BB_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[1].MUL_BB_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[1].MUL_BB_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[0].MUL_BB_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[0].MUL_BB_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_BB_LOOP[0].MUL_BB_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[3].MUL_AA_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[3].MUL_AA_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[3].MUL_AA_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[2].MUL_AA_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[2].MUL_AA_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[2].MUL_AA_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[1].MUL_AA_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[1].MUL_AA_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[1].MUL_AA_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[0].MUL_AA_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[0].MUL_AA_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AA_LOOP[0].MUL_AA_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[3].MUL_AB_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[3].MUL_AB_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[3].MUL_AB_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[2].MUL_AB_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[2].MUL_AB_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[2].MUL_AB_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[1].MUL_AB_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[1].MUL_AB_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[1].MUL_AB_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[0].MUL_AB_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[0].MUL_AB_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_MUL_AB_LOOP[0].MUL_AB_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[3].ADDBK_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[3].ADDBK_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[3].ADDBK_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[2].ADDBK_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[2].ADDBK_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[2].ADDBK_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_NORM_B_CHAIN.ADDB0_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_NORM_B_CHAIN.ADDB0_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_NORM_B_CHAIN.ADDB0_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[3].ADDAK_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[3].ADDAK_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[3].ADDAK_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[2].ADDAK_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[2].ADDAK_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[2].ADDAK_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_NORM_A_CHAIN.ADDA0_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_NORM_A_CHAIN.ADDA0_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_NORM_A_CHAIN.ADDA0_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_DOT_CHAIN.DOT_ADD_CHAIN[3].ADDJ_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_DOT_CHAIN.DOT_ADD_CHAIN[3].ADDJ_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_DOT_CHAIN.DOT_ADD_CHAIN[3].ADDJ_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_DOT_CHAIN.DOT_ADD_CHAIN[2].ADDJ_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_DOT_CHAIN.DOT_ADD_CHAIN[2].ADDJ_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_DOT_CHAIN.DOT_ADD_CHAIN[2].ADDJ_S_AXIS_B_TREADY_UNCONNECTED ;
  wire \NLW_DOT_CHAIN.ADD0_M_AXIS_RESULT_TREADY_UNCONNECTED ;
  wire \NLW_DOT_CHAIN.ADD0_S_AXIS_A_TREADY_UNCONNECTED ;
  wire \NLW_DOT_CHAIN.ADD0_S_AXIS_B_TREADY_UNCONNECTED ;
  wire NLW_SQRTB_M_AXIS_RESULT_TREADY_UNCONNECTED;
  wire NLW_SQRTB_S_AXIS_A_TREADY_UNCONNECTED;
  wire NLW_SQRTA_M_AXIS_RESULT_TREADY_UNCONNECTED;
  wire NLW_SQRTA_S_AXIS_A_TREADY_UNCONNECTED;
  wire NLW_DIV_COS_M_AXIS_RESULT_TREADY_UNCONNECTED;
  wire NLW_DIV_COS_S_AXIS_A_TREADY_UNCONNECTED;
  wire NLW_DIV_COS_S_AXIS_B_TREADY_UNCONNECTED;
  wire [31 : 0] \P_AB<0> ;
  wire [3 : 0] P_AB_VALID;
  wire [31 : 0] \P_AB<1> ;
  wire [31 : 0] \P_AB<2> ;
  wire [31 : 0] \P_AB<3> ;
  wire [31 : 0] \SUM_AB<0> ;
  wire [2 : 0] SUM_AB_VALID;
  wire [31 : 0] \SUM_AB<1> ;
  wire [31 : 0] \SUM_AB<2> ;
  wire [31 : 0] \P_AA<0> ;
  wire [3 : 0] P_AA_VALID;
  wire [31 : 0] \P_AA<1> ;
  wire [31 : 0] \P_AA<2> ;
  wire [31 : 0] \P_AA<3> ;
  wire [31 : 0] \SUM_AA<0> ;
  wire [2 : 0] SUM_AA_VALID;
  wire [31 : 0] \SUM_AA<1> ;
  wire [31 : 0] \SUM_AA<2> ;
  wire [31 : 0] NORMA;
  wire [31 : 0] \P_BB<0> ;
  wire [3 : 0] P_BB_VALID;
  wire [31 : 0] \P_BB<1> ;
  wire [31 : 0] \P_BB<2> ;
  wire [31 : 0] \P_BB<3> ;
  wire [31 : 0] \SUM_BB<0> ;
  wire [2 : 0] SUM_BB_VALID;
  wire [31 : 0] \SUM_BB<1> ;
  wire [31 : 0] \SUM_BB<2> ;
  wire [31 : 0] NORMB;
  wire [31 : 0] NORM_PROD;
  LUT2 #(
    .INIT ( 4'h8 ))
  START_DIV1 (
    .I0(SUM_AB_VALID[2]),
    .I1(NORM_PROD_VALID),
    .O(START_DIV)
  );
  IBUF   A_FLAT_127_IBUF (
    .I(A_FLAT[127]),
    .O(A_FLAT_127_IBUF_96)
  );
  IBUF   A_FLAT_126_IBUF (
    .I(A_FLAT[126]),
    .O(A_FLAT_126_IBUF_97)
  );
  IBUF   A_FLAT_125_IBUF (
    .I(A_FLAT[125]),
    .O(A_FLAT_125_IBUF_98)
  );
  IBUF   A_FLAT_124_IBUF (
    .I(A_FLAT[124]),
    .O(A_FLAT_124_IBUF_99)
  );
  IBUF   A_FLAT_123_IBUF (
    .I(A_FLAT[123]),
    .O(A_FLAT_123_IBUF_100)
  );
  IBUF   A_FLAT_122_IBUF (
    .I(A_FLAT[122]),
    .O(A_FLAT_122_IBUF_101)
  );
  IBUF   A_FLAT_121_IBUF (
    .I(A_FLAT[121]),
    .O(A_FLAT_121_IBUF_102)
  );
  IBUF   A_FLAT_120_IBUF (
    .I(A_FLAT[120]),
    .O(A_FLAT_120_IBUF_103)
  );
  IBUF   A_FLAT_119_IBUF (
    .I(A_FLAT[119]),
    .O(A_FLAT_119_IBUF_104)
  );
  IBUF   A_FLAT_118_IBUF (
    .I(A_FLAT[118]),
    .O(A_FLAT_118_IBUF_105)
  );
  IBUF   A_FLAT_117_IBUF (
    .I(A_FLAT[117]),
    .O(A_FLAT_117_IBUF_106)
  );
  IBUF   A_FLAT_116_IBUF (
    .I(A_FLAT[116]),
    .O(A_FLAT_116_IBUF_107)
  );
  IBUF   A_FLAT_115_IBUF (
    .I(A_FLAT[115]),
    .O(A_FLAT_115_IBUF_108)
  );
  IBUF   A_FLAT_114_IBUF (
    .I(A_FLAT[114]),
    .O(A_FLAT_114_IBUF_109)
  );
  IBUF   A_FLAT_113_IBUF (
    .I(A_FLAT[113]),
    .O(A_FLAT_113_IBUF_110)
  );
  IBUF   A_FLAT_112_IBUF (
    .I(A_FLAT[112]),
    .O(A_FLAT_112_IBUF_111)
  );
  IBUF   A_FLAT_111_IBUF (
    .I(A_FLAT[111]),
    .O(A_FLAT_111_IBUF_112)
  );
  IBUF   A_FLAT_110_IBUF (
    .I(A_FLAT[110]),
    .O(A_FLAT_110_IBUF_113)
  );
  IBUF   A_FLAT_109_IBUF (
    .I(A_FLAT[109]),
    .O(A_FLAT_109_IBUF_114)
  );
  IBUF   A_FLAT_108_IBUF (
    .I(A_FLAT[108]),
    .O(A_FLAT_108_IBUF_115)
  );
  IBUF   A_FLAT_107_IBUF (
    .I(A_FLAT[107]),
    .O(A_FLAT_107_IBUF_116)
  );
  IBUF   A_FLAT_106_IBUF (
    .I(A_FLAT[106]),
    .O(A_FLAT_106_IBUF_117)
  );
  IBUF   A_FLAT_105_IBUF (
    .I(A_FLAT[105]),
    .O(A_FLAT_105_IBUF_118)
  );
  IBUF   A_FLAT_104_IBUF (
    .I(A_FLAT[104]),
    .O(A_FLAT_104_IBUF_119)
  );
  IBUF   A_FLAT_103_IBUF (
    .I(A_FLAT[103]),
    .O(A_FLAT_103_IBUF_120)
  );
  IBUF   A_FLAT_102_IBUF (
    .I(A_FLAT[102]),
    .O(A_FLAT_102_IBUF_121)
  );
  IBUF   A_FLAT_101_IBUF (
    .I(A_FLAT[101]),
    .O(A_FLAT_101_IBUF_122)
  );
  IBUF   A_FLAT_100_IBUF (
    .I(A_FLAT[100]),
    .O(A_FLAT_100_IBUF_123)
  );
  IBUF   A_FLAT_99_IBUF (
    .I(A_FLAT[99]),
    .O(A_FLAT_99_IBUF_124)
  );
  IBUF   A_FLAT_98_IBUF (
    .I(A_FLAT[98]),
    .O(A_FLAT_98_IBUF_125)
  );
  IBUF   A_FLAT_97_IBUF (
    .I(A_FLAT[97]),
    .O(A_FLAT_97_IBUF_126)
  );
  IBUF   A_FLAT_96_IBUF (
    .I(A_FLAT[96]),
    .O(A_FLAT_96_IBUF_127)
  );
  IBUF   A_FLAT_95_IBUF (
    .I(A_FLAT[95]),
    .O(A_FLAT_95_IBUF_64)
  );
  IBUF   A_FLAT_94_IBUF (
    .I(A_FLAT[94]),
    .O(A_FLAT_94_IBUF_65)
  );
  IBUF   A_FLAT_93_IBUF (
    .I(A_FLAT[93]),
    .O(A_FLAT_93_IBUF_66)
  );
  IBUF   A_FLAT_92_IBUF (
    .I(A_FLAT[92]),
    .O(A_FLAT_92_IBUF_67)
  );
  IBUF   A_FLAT_91_IBUF (
    .I(A_FLAT[91]),
    .O(A_FLAT_91_IBUF_68)
  );
  IBUF   A_FLAT_90_IBUF (
    .I(A_FLAT[90]),
    .O(A_FLAT_90_IBUF_69)
  );
  IBUF   A_FLAT_89_IBUF (
    .I(A_FLAT[89]),
    .O(A_FLAT_89_IBUF_70)
  );
  IBUF   A_FLAT_88_IBUF (
    .I(A_FLAT[88]),
    .O(A_FLAT_88_IBUF_71)
  );
  IBUF   A_FLAT_87_IBUF (
    .I(A_FLAT[87]),
    .O(A_FLAT_87_IBUF_72)
  );
  IBUF   A_FLAT_86_IBUF (
    .I(A_FLAT[86]),
    .O(A_FLAT_86_IBUF_73)
  );
  IBUF   A_FLAT_85_IBUF (
    .I(A_FLAT[85]),
    .O(A_FLAT_85_IBUF_74)
  );
  IBUF   A_FLAT_84_IBUF (
    .I(A_FLAT[84]),
    .O(A_FLAT_84_IBUF_75)
  );
  IBUF   A_FLAT_83_IBUF (
    .I(A_FLAT[83]),
    .O(A_FLAT_83_IBUF_76)
  );
  IBUF   A_FLAT_82_IBUF (
    .I(A_FLAT[82]),
    .O(A_FLAT_82_IBUF_77)
  );
  IBUF   A_FLAT_81_IBUF (
    .I(A_FLAT[81]),
    .O(A_FLAT_81_IBUF_78)
  );
  IBUF   A_FLAT_80_IBUF (
    .I(A_FLAT[80]),
    .O(A_FLAT_80_IBUF_79)
  );
  IBUF   A_FLAT_79_IBUF (
    .I(A_FLAT[79]),
    .O(A_FLAT_79_IBUF_80)
  );
  IBUF   A_FLAT_78_IBUF (
    .I(A_FLAT[78]),
    .O(A_FLAT_78_IBUF_81)
  );
  IBUF   A_FLAT_77_IBUF (
    .I(A_FLAT[77]),
    .O(A_FLAT_77_IBUF_82)
  );
  IBUF   A_FLAT_76_IBUF (
    .I(A_FLAT[76]),
    .O(A_FLAT_76_IBUF_83)
  );
  IBUF   A_FLAT_75_IBUF (
    .I(A_FLAT[75]),
    .O(A_FLAT_75_IBUF_84)
  );
  IBUF   A_FLAT_74_IBUF (
    .I(A_FLAT[74]),
    .O(A_FLAT_74_IBUF_85)
  );
  IBUF   A_FLAT_73_IBUF (
    .I(A_FLAT[73]),
    .O(A_FLAT_73_IBUF_86)
  );
  IBUF   A_FLAT_72_IBUF (
    .I(A_FLAT[72]),
    .O(A_FLAT_72_IBUF_87)
  );
  IBUF   A_FLAT_71_IBUF (
    .I(A_FLAT[71]),
    .O(A_FLAT_71_IBUF_88)
  );
  IBUF   A_FLAT_70_IBUF (
    .I(A_FLAT[70]),
    .O(A_FLAT_70_IBUF_89)
  );
  IBUF   A_FLAT_69_IBUF (
    .I(A_FLAT[69]),
    .O(A_FLAT_69_IBUF_90)
  );
  IBUF   A_FLAT_68_IBUF (
    .I(A_FLAT[68]),
    .O(A_FLAT_68_IBUF_91)
  );
  IBUF   A_FLAT_67_IBUF (
    .I(A_FLAT[67]),
    .O(A_FLAT_67_IBUF_92)
  );
  IBUF   A_FLAT_66_IBUF (
    .I(A_FLAT[66]),
    .O(A_FLAT_66_IBUF_93)
  );
  IBUF   A_FLAT_65_IBUF (
    .I(A_FLAT[65]),
    .O(A_FLAT_65_IBUF_94)
  );
  IBUF   A_FLAT_64_IBUF (
    .I(A_FLAT[64]),
    .O(A_FLAT_64_IBUF_95)
  );
  IBUF   A_FLAT_63_IBUF (
    .I(A_FLAT[63]),
    .O(A_FLAT_63_IBUF_32)
  );
  IBUF   A_FLAT_62_IBUF (
    .I(A_FLAT[62]),
    .O(A_FLAT_62_IBUF_33)
  );
  IBUF   A_FLAT_61_IBUF (
    .I(A_FLAT[61]),
    .O(A_FLAT_61_IBUF_34)
  );
  IBUF   A_FLAT_60_IBUF (
    .I(A_FLAT[60]),
    .O(A_FLAT_60_IBUF_35)
  );
  IBUF   A_FLAT_59_IBUF (
    .I(A_FLAT[59]),
    .O(A_FLAT_59_IBUF_36)
  );
  IBUF   A_FLAT_58_IBUF (
    .I(A_FLAT[58]),
    .O(A_FLAT_58_IBUF_37)
  );
  IBUF   A_FLAT_57_IBUF (
    .I(A_FLAT[57]),
    .O(A_FLAT_57_IBUF_38)
  );
  IBUF   A_FLAT_56_IBUF (
    .I(A_FLAT[56]),
    .O(A_FLAT_56_IBUF_39)
  );
  IBUF   A_FLAT_55_IBUF (
    .I(A_FLAT[55]),
    .O(A_FLAT_55_IBUF_40)
  );
  IBUF   A_FLAT_54_IBUF (
    .I(A_FLAT[54]),
    .O(A_FLAT_54_IBUF_41)
  );
  IBUF   A_FLAT_53_IBUF (
    .I(A_FLAT[53]),
    .O(A_FLAT_53_IBUF_42)
  );
  IBUF   A_FLAT_52_IBUF (
    .I(A_FLAT[52]),
    .O(A_FLAT_52_IBUF_43)
  );
  IBUF   A_FLAT_51_IBUF (
    .I(A_FLAT[51]),
    .O(A_FLAT_51_IBUF_44)
  );
  IBUF   A_FLAT_50_IBUF (
    .I(A_FLAT[50]),
    .O(A_FLAT_50_IBUF_45)
  );
  IBUF   A_FLAT_49_IBUF (
    .I(A_FLAT[49]),
    .O(A_FLAT_49_IBUF_46)
  );
  IBUF   A_FLAT_48_IBUF (
    .I(A_FLAT[48]),
    .O(A_FLAT_48_IBUF_47)
  );
  IBUF   A_FLAT_47_IBUF (
    .I(A_FLAT[47]),
    .O(A_FLAT_47_IBUF_48)
  );
  IBUF   A_FLAT_46_IBUF (
    .I(A_FLAT[46]),
    .O(A_FLAT_46_IBUF_49)
  );
  IBUF   A_FLAT_45_IBUF (
    .I(A_FLAT[45]),
    .O(A_FLAT_45_IBUF_50)
  );
  IBUF   A_FLAT_44_IBUF (
    .I(A_FLAT[44]),
    .O(A_FLAT_44_IBUF_51)
  );
  IBUF   A_FLAT_43_IBUF (
    .I(A_FLAT[43]),
    .O(A_FLAT_43_IBUF_52)
  );
  IBUF   A_FLAT_42_IBUF (
    .I(A_FLAT[42]),
    .O(A_FLAT_42_IBUF_53)
  );
  IBUF   A_FLAT_41_IBUF (
    .I(A_FLAT[41]),
    .O(A_FLAT_41_IBUF_54)
  );
  IBUF   A_FLAT_40_IBUF (
    .I(A_FLAT[40]),
    .O(A_FLAT_40_IBUF_55)
  );
  IBUF   A_FLAT_39_IBUF (
    .I(A_FLAT[39]),
    .O(A_FLAT_39_IBUF_56)
  );
  IBUF   A_FLAT_38_IBUF (
    .I(A_FLAT[38]),
    .O(A_FLAT_38_IBUF_57)
  );
  IBUF   A_FLAT_37_IBUF (
    .I(A_FLAT[37]),
    .O(A_FLAT_37_IBUF_58)
  );
  IBUF   A_FLAT_36_IBUF (
    .I(A_FLAT[36]),
    .O(A_FLAT_36_IBUF_59)
  );
  IBUF   A_FLAT_35_IBUF (
    .I(A_FLAT[35]),
    .O(A_FLAT_35_IBUF_60)
  );
  IBUF   A_FLAT_34_IBUF (
    .I(A_FLAT[34]),
    .O(A_FLAT_34_IBUF_61)
  );
  IBUF   A_FLAT_33_IBUF (
    .I(A_FLAT[33]),
    .O(A_FLAT_33_IBUF_62)
  );
  IBUF   A_FLAT_32_IBUF (
    .I(A_FLAT[32]),
    .O(A_FLAT_32_IBUF_63)
  );
  IBUF   A_FLAT_31_IBUF (
    .I(A_FLAT[31]),
    .O(A_FLAT_31_IBUF_0)
  );
  IBUF   A_FLAT_30_IBUF (
    .I(A_FLAT[30]),
    .O(A_FLAT_30_IBUF_1)
  );
  IBUF   A_FLAT_29_IBUF (
    .I(A_FLAT[29]),
    .O(A_FLAT_29_IBUF_2)
  );
  IBUF   A_FLAT_28_IBUF (
    .I(A_FLAT[28]),
    .O(A_FLAT_28_IBUF_3)
  );
  IBUF   A_FLAT_27_IBUF (
    .I(A_FLAT[27]),
    .O(A_FLAT_27_IBUF_4)
  );
  IBUF   A_FLAT_26_IBUF (
    .I(A_FLAT[26]),
    .O(A_FLAT_26_IBUF_5)
  );
  IBUF   A_FLAT_25_IBUF (
    .I(A_FLAT[25]),
    .O(A_FLAT_25_IBUF_6)
  );
  IBUF   A_FLAT_24_IBUF (
    .I(A_FLAT[24]),
    .O(A_FLAT_24_IBUF_7)
  );
  IBUF   A_FLAT_23_IBUF (
    .I(A_FLAT[23]),
    .O(A_FLAT_23_IBUF_8)
  );
  IBUF   A_FLAT_22_IBUF (
    .I(A_FLAT[22]),
    .O(A_FLAT_22_IBUF_9)
  );
  IBUF   A_FLAT_21_IBUF (
    .I(A_FLAT[21]),
    .O(A_FLAT_21_IBUF_10)
  );
  IBUF   A_FLAT_20_IBUF (
    .I(A_FLAT[20]),
    .O(A_FLAT_20_IBUF_11)
  );
  IBUF   A_FLAT_19_IBUF (
    .I(A_FLAT[19]),
    .O(A_FLAT_19_IBUF_12)
  );
  IBUF   A_FLAT_18_IBUF (
    .I(A_FLAT[18]),
    .O(A_FLAT_18_IBUF_13)
  );
  IBUF   A_FLAT_17_IBUF (
    .I(A_FLAT[17]),
    .O(A_FLAT_17_IBUF_14)
  );
  IBUF   A_FLAT_16_IBUF (
    .I(A_FLAT[16]),
    .O(A_FLAT_16_IBUF_15)
  );
  IBUF   A_FLAT_15_IBUF (
    .I(A_FLAT[15]),
    .O(A_FLAT_15_IBUF_16)
  );
  IBUF   A_FLAT_14_IBUF (
    .I(A_FLAT[14]),
    .O(A_FLAT_14_IBUF_17)
  );
  IBUF   A_FLAT_13_IBUF (
    .I(A_FLAT[13]),
    .O(A_FLAT_13_IBUF_18)
  );
  IBUF   A_FLAT_12_IBUF (
    .I(A_FLAT[12]),
    .O(A_FLAT_12_IBUF_19)
  );
  IBUF   A_FLAT_11_IBUF (
    .I(A_FLAT[11]),
    .O(A_FLAT_11_IBUF_20)
  );
  IBUF   A_FLAT_10_IBUF (
    .I(A_FLAT[10]),
    .O(A_FLAT_10_IBUF_21)
  );
  IBUF   A_FLAT_9_IBUF (
    .I(A_FLAT[9]),
    .O(A_FLAT_9_IBUF_22)
  );
  IBUF   A_FLAT_8_IBUF (
    .I(A_FLAT[8]),
    .O(A_FLAT_8_IBUF_23)
  );
  IBUF   A_FLAT_7_IBUF (
    .I(A_FLAT[7]),
    .O(A_FLAT_7_IBUF_24)
  );
  IBUF   A_FLAT_6_IBUF (
    .I(A_FLAT[6]),
    .O(A_FLAT_6_IBUF_25)
  );
  IBUF   A_FLAT_5_IBUF (
    .I(A_FLAT[5]),
    .O(A_FLAT_5_IBUF_26)
  );
  IBUF   A_FLAT_4_IBUF (
    .I(A_FLAT[4]),
    .O(A_FLAT_4_IBUF_27)
  );
  IBUF   A_FLAT_3_IBUF (
    .I(A_FLAT[3]),
    .O(A_FLAT_3_IBUF_28)
  );
  IBUF   A_FLAT_2_IBUF (
    .I(A_FLAT[2]),
    .O(A_FLAT_2_IBUF_29)
  );
  IBUF   A_FLAT_1_IBUF (
    .I(A_FLAT[1]),
    .O(A_FLAT_1_IBUF_30)
  );
  IBUF   A_FLAT_0_IBUF (
    .I(A_FLAT[0]),
    .O(A_FLAT_0_IBUF_31)
  );
  IBUF   B_FLAT_127_IBUF (
    .I(B_FLAT[127]),
    .O(B_FLAT_127_IBUF_224)
  );
  IBUF   B_FLAT_126_IBUF (
    .I(B_FLAT[126]),
    .O(B_FLAT_126_IBUF_225)
  );
  IBUF   B_FLAT_125_IBUF (
    .I(B_FLAT[125]),
    .O(B_FLAT_125_IBUF_226)
  );
  IBUF   B_FLAT_124_IBUF (
    .I(B_FLAT[124]),
    .O(B_FLAT_124_IBUF_227)
  );
  IBUF   B_FLAT_123_IBUF (
    .I(B_FLAT[123]),
    .O(B_FLAT_123_IBUF_228)
  );
  IBUF   B_FLAT_122_IBUF (
    .I(B_FLAT[122]),
    .O(B_FLAT_122_IBUF_229)
  );
  IBUF   B_FLAT_121_IBUF (
    .I(B_FLAT[121]),
    .O(B_FLAT_121_IBUF_230)
  );
  IBUF   B_FLAT_120_IBUF (
    .I(B_FLAT[120]),
    .O(B_FLAT_120_IBUF_231)
  );
  IBUF   B_FLAT_119_IBUF (
    .I(B_FLAT[119]),
    .O(B_FLAT_119_IBUF_232)
  );
  IBUF   B_FLAT_118_IBUF (
    .I(B_FLAT[118]),
    .O(B_FLAT_118_IBUF_233)
  );
  IBUF   B_FLAT_117_IBUF (
    .I(B_FLAT[117]),
    .O(B_FLAT_117_IBUF_234)
  );
  IBUF   B_FLAT_116_IBUF (
    .I(B_FLAT[116]),
    .O(B_FLAT_116_IBUF_235)
  );
  IBUF   B_FLAT_115_IBUF (
    .I(B_FLAT[115]),
    .O(B_FLAT_115_IBUF_236)
  );
  IBUF   B_FLAT_114_IBUF (
    .I(B_FLAT[114]),
    .O(B_FLAT_114_IBUF_237)
  );
  IBUF   B_FLAT_113_IBUF (
    .I(B_FLAT[113]),
    .O(B_FLAT_113_IBUF_238)
  );
  IBUF   B_FLAT_112_IBUF (
    .I(B_FLAT[112]),
    .O(B_FLAT_112_IBUF_239)
  );
  IBUF   B_FLAT_111_IBUF (
    .I(B_FLAT[111]),
    .O(B_FLAT_111_IBUF_240)
  );
  IBUF   B_FLAT_110_IBUF (
    .I(B_FLAT[110]),
    .O(B_FLAT_110_IBUF_241)
  );
  IBUF   B_FLAT_109_IBUF (
    .I(B_FLAT[109]),
    .O(B_FLAT_109_IBUF_242)
  );
  IBUF   B_FLAT_108_IBUF (
    .I(B_FLAT[108]),
    .O(B_FLAT_108_IBUF_243)
  );
  IBUF   B_FLAT_107_IBUF (
    .I(B_FLAT[107]),
    .O(B_FLAT_107_IBUF_244)
  );
  IBUF   B_FLAT_106_IBUF (
    .I(B_FLAT[106]),
    .O(B_FLAT_106_IBUF_245)
  );
  IBUF   B_FLAT_105_IBUF (
    .I(B_FLAT[105]),
    .O(B_FLAT_105_IBUF_246)
  );
  IBUF   B_FLAT_104_IBUF (
    .I(B_FLAT[104]),
    .O(B_FLAT_104_IBUF_247)
  );
  IBUF   B_FLAT_103_IBUF (
    .I(B_FLAT[103]),
    .O(B_FLAT_103_IBUF_248)
  );
  IBUF   B_FLAT_102_IBUF (
    .I(B_FLAT[102]),
    .O(B_FLAT_102_IBUF_249)
  );
  IBUF   B_FLAT_101_IBUF (
    .I(B_FLAT[101]),
    .O(B_FLAT_101_IBUF_250)
  );
  IBUF   B_FLAT_100_IBUF (
    .I(B_FLAT[100]),
    .O(B_FLAT_100_IBUF_251)
  );
  IBUF   B_FLAT_99_IBUF (
    .I(B_FLAT[99]),
    .O(B_FLAT_99_IBUF_252)
  );
  IBUF   B_FLAT_98_IBUF (
    .I(B_FLAT[98]),
    .O(B_FLAT_98_IBUF_253)
  );
  IBUF   B_FLAT_97_IBUF (
    .I(B_FLAT[97]),
    .O(B_FLAT_97_IBUF_254)
  );
  IBUF   B_FLAT_96_IBUF (
    .I(B_FLAT[96]),
    .O(B_FLAT_96_IBUF_255)
  );
  IBUF   B_FLAT_95_IBUF (
    .I(B_FLAT[95]),
    .O(B_FLAT_95_IBUF_192)
  );
  IBUF   B_FLAT_94_IBUF (
    .I(B_FLAT[94]),
    .O(B_FLAT_94_IBUF_193)
  );
  IBUF   B_FLAT_93_IBUF (
    .I(B_FLAT[93]),
    .O(B_FLAT_93_IBUF_194)
  );
  IBUF   B_FLAT_92_IBUF (
    .I(B_FLAT[92]),
    .O(B_FLAT_92_IBUF_195)
  );
  IBUF   B_FLAT_91_IBUF (
    .I(B_FLAT[91]),
    .O(B_FLAT_91_IBUF_196)
  );
  IBUF   B_FLAT_90_IBUF (
    .I(B_FLAT[90]),
    .O(B_FLAT_90_IBUF_197)
  );
  IBUF   B_FLAT_89_IBUF (
    .I(B_FLAT[89]),
    .O(B_FLAT_89_IBUF_198)
  );
  IBUF   B_FLAT_88_IBUF (
    .I(B_FLAT[88]),
    .O(B_FLAT_88_IBUF_199)
  );
  IBUF   B_FLAT_87_IBUF (
    .I(B_FLAT[87]),
    .O(B_FLAT_87_IBUF_200)
  );
  IBUF   B_FLAT_86_IBUF (
    .I(B_FLAT[86]),
    .O(B_FLAT_86_IBUF_201)
  );
  IBUF   B_FLAT_85_IBUF (
    .I(B_FLAT[85]),
    .O(B_FLAT_85_IBUF_202)
  );
  IBUF   B_FLAT_84_IBUF (
    .I(B_FLAT[84]),
    .O(B_FLAT_84_IBUF_203)
  );
  IBUF   B_FLAT_83_IBUF (
    .I(B_FLAT[83]),
    .O(B_FLAT_83_IBUF_204)
  );
  IBUF   B_FLAT_82_IBUF (
    .I(B_FLAT[82]),
    .O(B_FLAT_82_IBUF_205)
  );
  IBUF   B_FLAT_81_IBUF (
    .I(B_FLAT[81]),
    .O(B_FLAT_81_IBUF_206)
  );
  IBUF   B_FLAT_80_IBUF (
    .I(B_FLAT[80]),
    .O(B_FLAT_80_IBUF_207)
  );
  IBUF   B_FLAT_79_IBUF (
    .I(B_FLAT[79]),
    .O(B_FLAT_79_IBUF_208)
  );
  IBUF   B_FLAT_78_IBUF (
    .I(B_FLAT[78]),
    .O(B_FLAT_78_IBUF_209)
  );
  IBUF   B_FLAT_77_IBUF (
    .I(B_FLAT[77]),
    .O(B_FLAT_77_IBUF_210)
  );
  IBUF   B_FLAT_76_IBUF (
    .I(B_FLAT[76]),
    .O(B_FLAT_76_IBUF_211)
  );
  IBUF   B_FLAT_75_IBUF (
    .I(B_FLAT[75]),
    .O(B_FLAT_75_IBUF_212)
  );
  IBUF   B_FLAT_74_IBUF (
    .I(B_FLAT[74]),
    .O(B_FLAT_74_IBUF_213)
  );
  IBUF   B_FLAT_73_IBUF (
    .I(B_FLAT[73]),
    .O(B_FLAT_73_IBUF_214)
  );
  IBUF   B_FLAT_72_IBUF (
    .I(B_FLAT[72]),
    .O(B_FLAT_72_IBUF_215)
  );
  IBUF   B_FLAT_71_IBUF (
    .I(B_FLAT[71]),
    .O(B_FLAT_71_IBUF_216)
  );
  IBUF   B_FLAT_70_IBUF (
    .I(B_FLAT[70]),
    .O(B_FLAT_70_IBUF_217)
  );
  IBUF   B_FLAT_69_IBUF (
    .I(B_FLAT[69]),
    .O(B_FLAT_69_IBUF_218)
  );
  IBUF   B_FLAT_68_IBUF (
    .I(B_FLAT[68]),
    .O(B_FLAT_68_IBUF_219)
  );
  IBUF   B_FLAT_67_IBUF (
    .I(B_FLAT[67]),
    .O(B_FLAT_67_IBUF_220)
  );
  IBUF   B_FLAT_66_IBUF (
    .I(B_FLAT[66]),
    .O(B_FLAT_66_IBUF_221)
  );
  IBUF   B_FLAT_65_IBUF (
    .I(B_FLAT[65]),
    .O(B_FLAT_65_IBUF_222)
  );
  IBUF   B_FLAT_64_IBUF (
    .I(B_FLAT[64]),
    .O(B_FLAT_64_IBUF_223)
  );
  IBUF   B_FLAT_63_IBUF (
    .I(B_FLAT[63]),
    .O(B_FLAT_63_IBUF_160)
  );
  IBUF   B_FLAT_62_IBUF (
    .I(B_FLAT[62]),
    .O(B_FLAT_62_IBUF_161)
  );
  IBUF   B_FLAT_61_IBUF (
    .I(B_FLAT[61]),
    .O(B_FLAT_61_IBUF_162)
  );
  IBUF   B_FLAT_60_IBUF (
    .I(B_FLAT[60]),
    .O(B_FLAT_60_IBUF_163)
  );
  IBUF   B_FLAT_59_IBUF (
    .I(B_FLAT[59]),
    .O(B_FLAT_59_IBUF_164)
  );
  IBUF   B_FLAT_58_IBUF (
    .I(B_FLAT[58]),
    .O(B_FLAT_58_IBUF_165)
  );
  IBUF   B_FLAT_57_IBUF (
    .I(B_FLAT[57]),
    .O(B_FLAT_57_IBUF_166)
  );
  IBUF   B_FLAT_56_IBUF (
    .I(B_FLAT[56]),
    .O(B_FLAT_56_IBUF_167)
  );
  IBUF   B_FLAT_55_IBUF (
    .I(B_FLAT[55]),
    .O(B_FLAT_55_IBUF_168)
  );
  IBUF   B_FLAT_54_IBUF (
    .I(B_FLAT[54]),
    .O(B_FLAT_54_IBUF_169)
  );
  IBUF   B_FLAT_53_IBUF (
    .I(B_FLAT[53]),
    .O(B_FLAT_53_IBUF_170)
  );
  IBUF   B_FLAT_52_IBUF (
    .I(B_FLAT[52]),
    .O(B_FLAT_52_IBUF_171)
  );
  IBUF   B_FLAT_51_IBUF (
    .I(B_FLAT[51]),
    .O(B_FLAT_51_IBUF_172)
  );
  IBUF   B_FLAT_50_IBUF (
    .I(B_FLAT[50]),
    .O(B_FLAT_50_IBUF_173)
  );
  IBUF   B_FLAT_49_IBUF (
    .I(B_FLAT[49]),
    .O(B_FLAT_49_IBUF_174)
  );
  IBUF   B_FLAT_48_IBUF (
    .I(B_FLAT[48]),
    .O(B_FLAT_48_IBUF_175)
  );
  IBUF   B_FLAT_47_IBUF (
    .I(B_FLAT[47]),
    .O(B_FLAT_47_IBUF_176)
  );
  IBUF   B_FLAT_46_IBUF (
    .I(B_FLAT[46]),
    .O(B_FLAT_46_IBUF_177)
  );
  IBUF   B_FLAT_45_IBUF (
    .I(B_FLAT[45]),
    .O(B_FLAT_45_IBUF_178)
  );
  IBUF   B_FLAT_44_IBUF (
    .I(B_FLAT[44]),
    .O(B_FLAT_44_IBUF_179)
  );
  IBUF   B_FLAT_43_IBUF (
    .I(B_FLAT[43]),
    .O(B_FLAT_43_IBUF_180)
  );
  IBUF   B_FLAT_42_IBUF (
    .I(B_FLAT[42]),
    .O(B_FLAT_42_IBUF_181)
  );
  IBUF   B_FLAT_41_IBUF (
    .I(B_FLAT[41]),
    .O(B_FLAT_41_IBUF_182)
  );
  IBUF   B_FLAT_40_IBUF (
    .I(B_FLAT[40]),
    .O(B_FLAT_40_IBUF_183)
  );
  IBUF   B_FLAT_39_IBUF (
    .I(B_FLAT[39]),
    .O(B_FLAT_39_IBUF_184)
  );
  IBUF   B_FLAT_38_IBUF (
    .I(B_FLAT[38]),
    .O(B_FLAT_38_IBUF_185)
  );
  IBUF   B_FLAT_37_IBUF (
    .I(B_FLAT[37]),
    .O(B_FLAT_37_IBUF_186)
  );
  IBUF   B_FLAT_36_IBUF (
    .I(B_FLAT[36]),
    .O(B_FLAT_36_IBUF_187)
  );
  IBUF   B_FLAT_35_IBUF (
    .I(B_FLAT[35]),
    .O(B_FLAT_35_IBUF_188)
  );
  IBUF   B_FLAT_34_IBUF (
    .I(B_FLAT[34]),
    .O(B_FLAT_34_IBUF_189)
  );
  IBUF   B_FLAT_33_IBUF (
    .I(B_FLAT[33]),
    .O(B_FLAT_33_IBUF_190)
  );
  IBUF   B_FLAT_32_IBUF (
    .I(B_FLAT[32]),
    .O(B_FLAT_32_IBUF_191)
  );
  IBUF   B_FLAT_31_IBUF (
    .I(B_FLAT[31]),
    .O(B_FLAT_31_IBUF_128)
  );
  IBUF   B_FLAT_30_IBUF (
    .I(B_FLAT[30]),
    .O(B_FLAT_30_IBUF_129)
  );
  IBUF   B_FLAT_29_IBUF (
    .I(B_FLAT[29]),
    .O(B_FLAT_29_IBUF_130)
  );
  IBUF   B_FLAT_28_IBUF (
    .I(B_FLAT[28]),
    .O(B_FLAT_28_IBUF_131)
  );
  IBUF   B_FLAT_27_IBUF (
    .I(B_FLAT[27]),
    .O(B_FLAT_27_IBUF_132)
  );
  IBUF   B_FLAT_26_IBUF (
    .I(B_FLAT[26]),
    .O(B_FLAT_26_IBUF_133)
  );
  IBUF   B_FLAT_25_IBUF (
    .I(B_FLAT[25]),
    .O(B_FLAT_25_IBUF_134)
  );
  IBUF   B_FLAT_24_IBUF (
    .I(B_FLAT[24]),
    .O(B_FLAT_24_IBUF_135)
  );
  IBUF   B_FLAT_23_IBUF (
    .I(B_FLAT[23]),
    .O(B_FLAT_23_IBUF_136)
  );
  IBUF   B_FLAT_22_IBUF (
    .I(B_FLAT[22]),
    .O(B_FLAT_22_IBUF_137)
  );
  IBUF   B_FLAT_21_IBUF (
    .I(B_FLAT[21]),
    .O(B_FLAT_21_IBUF_138)
  );
  IBUF   B_FLAT_20_IBUF (
    .I(B_FLAT[20]),
    .O(B_FLAT_20_IBUF_139)
  );
  IBUF   B_FLAT_19_IBUF (
    .I(B_FLAT[19]),
    .O(B_FLAT_19_IBUF_140)
  );
  IBUF   B_FLAT_18_IBUF (
    .I(B_FLAT[18]),
    .O(B_FLAT_18_IBUF_141)
  );
  IBUF   B_FLAT_17_IBUF (
    .I(B_FLAT[17]),
    .O(B_FLAT_17_IBUF_142)
  );
  IBUF   B_FLAT_16_IBUF (
    .I(B_FLAT[16]),
    .O(B_FLAT_16_IBUF_143)
  );
  IBUF   B_FLAT_15_IBUF (
    .I(B_FLAT[15]),
    .O(B_FLAT_15_IBUF_144)
  );
  IBUF   B_FLAT_14_IBUF (
    .I(B_FLAT[14]),
    .O(B_FLAT_14_IBUF_145)
  );
  IBUF   B_FLAT_13_IBUF (
    .I(B_FLAT[13]),
    .O(B_FLAT_13_IBUF_146)
  );
  IBUF   B_FLAT_12_IBUF (
    .I(B_FLAT[12]),
    .O(B_FLAT_12_IBUF_147)
  );
  IBUF   B_FLAT_11_IBUF (
    .I(B_FLAT[11]),
    .O(B_FLAT_11_IBUF_148)
  );
  IBUF   B_FLAT_10_IBUF (
    .I(B_FLAT[10]),
    .O(B_FLAT_10_IBUF_149)
  );
  IBUF   B_FLAT_9_IBUF (
    .I(B_FLAT[9]),
    .O(B_FLAT_9_IBUF_150)
  );
  IBUF   B_FLAT_8_IBUF (
    .I(B_FLAT[8]),
    .O(B_FLAT_8_IBUF_151)
  );
  IBUF   B_FLAT_7_IBUF (
    .I(B_FLAT[7]),
    .O(B_FLAT_7_IBUF_152)
  );
  IBUF   B_FLAT_6_IBUF (
    .I(B_FLAT[6]),
    .O(B_FLAT_6_IBUF_153)
  );
  IBUF   B_FLAT_5_IBUF (
    .I(B_FLAT[5]),
    .O(B_FLAT_5_IBUF_154)
  );
  IBUF   B_FLAT_4_IBUF (
    .I(B_FLAT[4]),
    .O(B_FLAT_4_IBUF_155)
  );
  IBUF   B_FLAT_3_IBUF (
    .I(B_FLAT[3]),
    .O(B_FLAT_3_IBUF_156)
  );
  IBUF   B_FLAT_2_IBUF (
    .I(B_FLAT[2]),
    .O(B_FLAT_2_IBUF_157)
  );
  IBUF   B_FLAT_1_IBUF (
    .I(B_FLAT[1]),
    .O(B_FLAT_1_IBUF_158)
  );
  IBUF   B_FLAT_0_IBUF (
    .I(B_FLAT[0]),
    .O(B_FLAT_0_IBUF_159)
  );
  IBUF   A_VALID_IN_3_IBUF (
    .I(A_VALID_IN[3]),
    .O(A_VALID_IN_3_IBUF_259)
  );
  IBUF   A_VALID_IN_2_IBUF (
    .I(A_VALID_IN[2]),
    .O(A_VALID_IN_2_IBUF_258)
  );
  IBUF   A_VALID_IN_1_IBUF (
    .I(A_VALID_IN[1]),
    .O(A_VALID_IN_1_IBUF_257)
  );
  IBUF   A_VALID_IN_0_IBUF (
    .I(A_VALID_IN[0]),
    .O(A_VALID_IN_0_IBUF_256)
  );
  IBUF   B_VALID_IN_3_IBUF (
    .I(B_VALID_IN[3]),
    .O(B_VALID_IN_3_IBUF_263)
  );
  IBUF   B_VALID_IN_2_IBUF (
    .I(B_VALID_IN[2]),
    .O(B_VALID_IN_2_IBUF_262)
  );
  IBUF   B_VALID_IN_1_IBUF (
    .I(B_VALID_IN[1]),
    .O(B_VALID_IN_1_IBUF_261)
  );
  IBUF   B_VALID_IN_0_IBUF (
    .I(B_VALID_IN[0]),
    .O(B_VALID_IN_0_IBUF_260)
  );
  IBUF   RST_IBUF (
    .I(RST),
    .O(RST_IBUF_265)
  );
  OBUF   COS_THETA_31_OBUF (
    .I(COS_THETA_31_OBUF_1058),
    .O(COS_THETA[31])
  );
  OBUF   COS_THETA_30_OBUF (
    .I(COS_THETA_30_OBUF_1059),
    .O(COS_THETA[30])
  );
  OBUF   COS_THETA_29_OBUF (
    .I(COS_THETA_29_OBUF_1060),
    .O(COS_THETA[29])
  );
  OBUF   COS_THETA_28_OBUF (
    .I(COS_THETA_28_OBUF_1061),
    .O(COS_THETA[28])
  );
  OBUF   COS_THETA_27_OBUF (
    .I(COS_THETA_27_OBUF_1062),
    .O(COS_THETA[27])
  );
  OBUF   COS_THETA_26_OBUF (
    .I(COS_THETA_26_OBUF_1063),
    .O(COS_THETA[26])
  );
  OBUF   COS_THETA_25_OBUF (
    .I(COS_THETA_25_OBUF_1064),
    .O(COS_THETA[25])
  );
  OBUF   COS_THETA_24_OBUF (
    .I(COS_THETA_24_OBUF_1065),
    .O(COS_THETA[24])
  );
  OBUF   COS_THETA_23_OBUF (
    .I(COS_THETA_23_OBUF_1066),
    .O(COS_THETA[23])
  );
  OBUF   COS_THETA_22_OBUF (
    .I(COS_THETA_22_OBUF_1067),
    .O(COS_THETA[22])
  );
  OBUF   COS_THETA_21_OBUF (
    .I(COS_THETA_21_OBUF_1068),
    .O(COS_THETA[21])
  );
  OBUF   COS_THETA_20_OBUF (
    .I(COS_THETA_20_OBUF_1069),
    .O(COS_THETA[20])
  );
  OBUF   COS_THETA_19_OBUF (
    .I(COS_THETA_19_OBUF_1070),
    .O(COS_THETA[19])
  );
  OBUF   COS_THETA_18_OBUF (
    .I(COS_THETA_18_OBUF_1071),
    .O(COS_THETA[18])
  );
  OBUF   COS_THETA_17_OBUF (
    .I(COS_THETA_17_OBUF_1072),
    .O(COS_THETA[17])
  );
  OBUF   COS_THETA_16_OBUF (
    .I(COS_THETA_16_OBUF_1073),
    .O(COS_THETA[16])
  );
  OBUF   COS_THETA_15_OBUF (
    .I(COS_THETA_15_OBUF_1074),
    .O(COS_THETA[15])
  );
  OBUF   COS_THETA_14_OBUF (
    .I(COS_THETA_14_OBUF_1075),
    .O(COS_THETA[14])
  );
  OBUF   COS_THETA_13_OBUF (
    .I(COS_THETA_13_OBUF_1076),
    .O(COS_THETA[13])
  );
  OBUF   COS_THETA_12_OBUF (
    .I(COS_THETA_12_OBUF_1077),
    .O(COS_THETA[12])
  );
  OBUF   COS_THETA_11_OBUF (
    .I(COS_THETA_11_OBUF_1078),
    .O(COS_THETA[11])
  );
  OBUF   COS_THETA_10_OBUF (
    .I(COS_THETA_10_OBUF_1079),
    .O(COS_THETA[10])
  );
  OBUF   COS_THETA_9_OBUF (
    .I(COS_THETA_9_OBUF_1080),
    .O(COS_THETA[9])
  );
  OBUF   COS_THETA_8_OBUF (
    .I(COS_THETA_8_OBUF_1081),
    .O(COS_THETA[8])
  );
  OBUF   COS_THETA_7_OBUF (
    .I(COS_THETA_7_OBUF_1082),
    .O(COS_THETA[7])
  );
  OBUF   COS_THETA_6_OBUF (
    .I(COS_THETA_6_OBUF_1083),
    .O(COS_THETA[6])
  );
  OBUF   COS_THETA_5_OBUF (
    .I(COS_THETA_5_OBUF_1084),
    .O(COS_THETA[5])
  );
  OBUF   COS_THETA_4_OBUF (
    .I(COS_THETA_4_OBUF_1085),
    .O(COS_THETA[4])
  );
  OBUF   COS_THETA_3_OBUF (
    .I(COS_THETA_3_OBUF_1086),
    .O(COS_THETA[3])
  );
  OBUF   COS_THETA_2_OBUF (
    .I(COS_THETA_2_OBUF_1087),
    .O(COS_THETA[2])
  );
  OBUF   COS_THETA_1_OBUF (
    .I(COS_THETA_1_OBUF_1088),
    .O(COS_THETA[1])
  );
  OBUF   COS_THETA_0_OBUF (
    .I(COS_THETA_0_OBUF_1089),
    .O(COS_THETA[0])
  );
  OBUF   COS_VALID_OBUF (
    .I(COS_VALID_OBUF_1090),
    .O(COS_VALID)
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_264)
  );
  INV   RST_INV_25_O1_INV_0 (
    .I(RST_IBUF_265),
    .O(RST_INV_25_O)
  );
  FP_Multiplier   MUL_NORM (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(NORMA_VALID),
    .S_AXIS_B_TVALID(NORMB_VALID),
    .M_AXIS_RESULT_TREADY(NLW_MUL_NORM_M_AXIS_RESULT_TREADY_UNCONNECTED),
    .S_AXIS_A_TREADY(NLW_MUL_NORM_S_AXIS_A_TREADY_UNCONNECTED),
    .S_AXIS_B_TREADY(NLW_MUL_NORM_S_AXIS_B_TREADY_UNCONNECTED),
    .M_AXIS_RESULT_TVALID(NORM_PROD_VALID),
    .S_AXIS_A_TDATA({NORMA[31], NORMA[30], NORMA[29], NORMA[28], NORMA[27], NORMA[26], NORMA[25], NORMA[24], NORMA[23], NORMA[22], NORMA[21], 
NORMA[20], NORMA[19], NORMA[18], NORMA[17], NORMA[16], NORMA[15], NORMA[14], NORMA[13], NORMA[12], NORMA[11], NORMA[10], NORMA[9], NORMA[8], NORMA[7]
, NORMA[6], NORMA[5], NORMA[4], NORMA[3], NORMA[2], NORMA[1], NORMA[0]}),
    .S_AXIS_B_TDATA({NORMB[31], NORMB[30], NORMB[29], NORMB[28], NORMB[27], NORMB[26], NORMB[25], NORMB[24], NORMB[23], NORMB[22], NORMB[21], 
NORMB[20], NORMB[19], NORMB[18], NORMB[17], NORMB[16], NORMB[15], NORMB[14], NORMB[13], NORMB[12], NORMB[11], NORMB[10], NORMB[9], NORMB[8], NORMB[7]
, NORMB[6], NORMB[5], NORMB[4], NORMB[3], NORMB[2], NORMB[1], NORMB[0]}),
    .M_AXIS_RESULT_TDATA({NORM_PROD[31], NORM_PROD[30], NORM_PROD[29], NORM_PROD[28], NORM_PROD[27], NORM_PROD[26], NORM_PROD[25], NORM_PROD[24], 
NORM_PROD[23], NORM_PROD[22], NORM_PROD[21], NORM_PROD[20], NORM_PROD[19], NORM_PROD[18], NORM_PROD[17], NORM_PROD[16], NORM_PROD[15], NORM_PROD[14], 
NORM_PROD[13], NORM_PROD[12], NORM_PROD[11], NORM_PROD[10], NORM_PROD[9], NORM_PROD[8], NORM_PROD[7], NORM_PROD[6], NORM_PROD[5], NORM_PROD[4], 
NORM_PROD[3], NORM_PROD[2], NORM_PROD[1], NORM_PROD[0]})
  );
  FP_Multiplier   \MUL_BB_LOOP[3].MUL_BB  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(B_VALID_IN_3_IBUF_263),
    .S_AXIS_B_TVALID(B_VALID_IN_3_IBUF_263),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_BB_LOOP[3].MUL_BB_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_BB_LOOP[3].MUL_BB_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_BB_LOOP[3].MUL_BB_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_BB_VALID[3]),
    .S_AXIS_A_TDATA({B_FLAT_127_IBUF_224, B_FLAT_126_IBUF_225, B_FLAT_125_IBUF_226, B_FLAT_124_IBUF_227, B_FLAT_123_IBUF_228, B_FLAT_122_IBUF_229, 
B_FLAT_121_IBUF_230, B_FLAT_120_IBUF_231, B_FLAT_119_IBUF_232, B_FLAT_118_IBUF_233, B_FLAT_117_IBUF_234, B_FLAT_116_IBUF_235, B_FLAT_115_IBUF_236, 
B_FLAT_114_IBUF_237, B_FLAT_113_IBUF_238, B_FLAT_112_IBUF_239, B_FLAT_111_IBUF_240, B_FLAT_110_IBUF_241, B_FLAT_109_IBUF_242, B_FLAT_108_IBUF_243, 
B_FLAT_107_IBUF_244, B_FLAT_106_IBUF_245, B_FLAT_105_IBUF_246, B_FLAT_104_IBUF_247, B_FLAT_103_IBUF_248, B_FLAT_102_IBUF_249, B_FLAT_101_IBUF_250, 
B_FLAT_100_IBUF_251, B_FLAT_99_IBUF_252, B_FLAT_98_IBUF_253, B_FLAT_97_IBUF_254, B_FLAT_96_IBUF_255}),
    .S_AXIS_B_TDATA({B_FLAT_127_IBUF_224, B_FLAT_126_IBUF_225, B_FLAT_125_IBUF_226, B_FLAT_124_IBUF_227, B_FLAT_123_IBUF_228, B_FLAT_122_IBUF_229, 
B_FLAT_121_IBUF_230, B_FLAT_120_IBUF_231, B_FLAT_119_IBUF_232, B_FLAT_118_IBUF_233, B_FLAT_117_IBUF_234, B_FLAT_116_IBUF_235, B_FLAT_115_IBUF_236, 
B_FLAT_114_IBUF_237, B_FLAT_113_IBUF_238, B_FLAT_112_IBUF_239, B_FLAT_111_IBUF_240, B_FLAT_110_IBUF_241, B_FLAT_109_IBUF_242, B_FLAT_108_IBUF_243, 
B_FLAT_107_IBUF_244, B_FLAT_106_IBUF_245, B_FLAT_105_IBUF_246, B_FLAT_104_IBUF_247, B_FLAT_103_IBUF_248, B_FLAT_102_IBUF_249, B_FLAT_101_IBUF_250, 
B_FLAT_100_IBUF_251, B_FLAT_99_IBUF_252, B_FLAT_98_IBUF_253, B_FLAT_97_IBUF_254, B_FLAT_96_IBUF_255}),
    .M_AXIS_RESULT_TDATA({\P_BB<3> [31], \P_BB<3> [30], \P_BB<3> [29], \P_BB<3> [28], \P_BB<3> [27], \P_BB<3> [26], \P_BB<3> [25], \P_BB<3> [24], 
\P_BB<3> [23], \P_BB<3> [22], \P_BB<3> [21], \P_BB<3> [20], \P_BB<3> [19], \P_BB<3> [18], \P_BB<3> [17], \P_BB<3> [16], \P_BB<3> [15], \P_BB<3> [14], 
\P_BB<3> [13], \P_BB<3> [12], \P_BB<3> [11], \P_BB<3> [10], \P_BB<3> [9], \P_BB<3> [8], \P_BB<3> [7], \P_BB<3> [6], \P_BB<3> [5], \P_BB<3> [4], 
\P_BB<3> [3], \P_BB<3> [2], \P_BB<3> [1], \P_BB<3> [0]})
  );
  FP_Multiplier   \MUL_BB_LOOP[2].MUL_BB  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(B_VALID_IN_2_IBUF_262),
    .S_AXIS_B_TVALID(B_VALID_IN_2_IBUF_262),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_BB_LOOP[2].MUL_BB_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_BB_LOOP[2].MUL_BB_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_BB_LOOP[2].MUL_BB_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_BB_VALID[2]),
    .S_AXIS_A_TDATA({B_FLAT_95_IBUF_192, B_FLAT_94_IBUF_193, B_FLAT_93_IBUF_194, B_FLAT_92_IBUF_195, B_FLAT_91_IBUF_196, B_FLAT_90_IBUF_197, 
B_FLAT_89_IBUF_198, B_FLAT_88_IBUF_199, B_FLAT_87_IBUF_200, B_FLAT_86_IBUF_201, B_FLAT_85_IBUF_202, B_FLAT_84_IBUF_203, B_FLAT_83_IBUF_204, 
B_FLAT_82_IBUF_205, B_FLAT_81_IBUF_206, B_FLAT_80_IBUF_207, B_FLAT_79_IBUF_208, B_FLAT_78_IBUF_209, B_FLAT_77_IBUF_210, B_FLAT_76_IBUF_211, 
B_FLAT_75_IBUF_212, B_FLAT_74_IBUF_213, B_FLAT_73_IBUF_214, B_FLAT_72_IBUF_215, B_FLAT_71_IBUF_216, B_FLAT_70_IBUF_217, B_FLAT_69_IBUF_218, 
B_FLAT_68_IBUF_219, B_FLAT_67_IBUF_220, B_FLAT_66_IBUF_221, B_FLAT_65_IBUF_222, B_FLAT_64_IBUF_223}),
    .S_AXIS_B_TDATA({B_FLAT_95_IBUF_192, B_FLAT_94_IBUF_193, B_FLAT_93_IBUF_194, B_FLAT_92_IBUF_195, B_FLAT_91_IBUF_196, B_FLAT_90_IBUF_197, 
B_FLAT_89_IBUF_198, B_FLAT_88_IBUF_199, B_FLAT_87_IBUF_200, B_FLAT_86_IBUF_201, B_FLAT_85_IBUF_202, B_FLAT_84_IBUF_203, B_FLAT_83_IBUF_204, 
B_FLAT_82_IBUF_205, B_FLAT_81_IBUF_206, B_FLAT_80_IBUF_207, B_FLAT_79_IBUF_208, B_FLAT_78_IBUF_209, B_FLAT_77_IBUF_210, B_FLAT_76_IBUF_211, 
B_FLAT_75_IBUF_212, B_FLAT_74_IBUF_213, B_FLAT_73_IBUF_214, B_FLAT_72_IBUF_215, B_FLAT_71_IBUF_216, B_FLAT_70_IBUF_217, B_FLAT_69_IBUF_218, 
B_FLAT_68_IBUF_219, B_FLAT_67_IBUF_220, B_FLAT_66_IBUF_221, B_FLAT_65_IBUF_222, B_FLAT_64_IBUF_223}),
    .M_AXIS_RESULT_TDATA({\P_BB<2> [31], \P_BB<2> [30], \P_BB<2> [29], \P_BB<2> [28], \P_BB<2> [27], \P_BB<2> [26], \P_BB<2> [25], \P_BB<2> [24], 
\P_BB<2> [23], \P_BB<2> [22], \P_BB<2> [21], \P_BB<2> [20], \P_BB<2> [19], \P_BB<2> [18], \P_BB<2> [17], \P_BB<2> [16], \P_BB<2> [15], \P_BB<2> [14], 
\P_BB<2> [13], \P_BB<2> [12], \P_BB<2> [11], \P_BB<2> [10], \P_BB<2> [9], \P_BB<2> [8], \P_BB<2> [7], \P_BB<2> [6], \P_BB<2> [5], \P_BB<2> [4], 
\P_BB<2> [3], \P_BB<2> [2], \P_BB<2> [1], \P_BB<2> [0]})
  );
  FP_Multiplier   \MUL_BB_LOOP[1].MUL_BB  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(B_VALID_IN_1_IBUF_261),
    .S_AXIS_B_TVALID(B_VALID_IN_1_IBUF_261),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_BB_LOOP[1].MUL_BB_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_BB_LOOP[1].MUL_BB_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_BB_LOOP[1].MUL_BB_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_BB_VALID[1]),
    .S_AXIS_A_TDATA({B_FLAT_63_IBUF_160, B_FLAT_62_IBUF_161, B_FLAT_61_IBUF_162, B_FLAT_60_IBUF_163, B_FLAT_59_IBUF_164, B_FLAT_58_IBUF_165, 
B_FLAT_57_IBUF_166, B_FLAT_56_IBUF_167, B_FLAT_55_IBUF_168, B_FLAT_54_IBUF_169, B_FLAT_53_IBUF_170, B_FLAT_52_IBUF_171, B_FLAT_51_IBUF_172, 
B_FLAT_50_IBUF_173, B_FLAT_49_IBUF_174, B_FLAT_48_IBUF_175, B_FLAT_47_IBUF_176, B_FLAT_46_IBUF_177, B_FLAT_45_IBUF_178, B_FLAT_44_IBUF_179, 
B_FLAT_43_IBUF_180, B_FLAT_42_IBUF_181, B_FLAT_41_IBUF_182, B_FLAT_40_IBUF_183, B_FLAT_39_IBUF_184, B_FLAT_38_IBUF_185, B_FLAT_37_IBUF_186, 
B_FLAT_36_IBUF_187, B_FLAT_35_IBUF_188, B_FLAT_34_IBUF_189, B_FLAT_33_IBUF_190, B_FLAT_32_IBUF_191}),
    .S_AXIS_B_TDATA({B_FLAT_63_IBUF_160, B_FLAT_62_IBUF_161, B_FLAT_61_IBUF_162, B_FLAT_60_IBUF_163, B_FLAT_59_IBUF_164, B_FLAT_58_IBUF_165, 
B_FLAT_57_IBUF_166, B_FLAT_56_IBUF_167, B_FLAT_55_IBUF_168, B_FLAT_54_IBUF_169, B_FLAT_53_IBUF_170, B_FLAT_52_IBUF_171, B_FLAT_51_IBUF_172, 
B_FLAT_50_IBUF_173, B_FLAT_49_IBUF_174, B_FLAT_48_IBUF_175, B_FLAT_47_IBUF_176, B_FLAT_46_IBUF_177, B_FLAT_45_IBUF_178, B_FLAT_44_IBUF_179, 
B_FLAT_43_IBUF_180, B_FLAT_42_IBUF_181, B_FLAT_41_IBUF_182, B_FLAT_40_IBUF_183, B_FLAT_39_IBUF_184, B_FLAT_38_IBUF_185, B_FLAT_37_IBUF_186, 
B_FLAT_36_IBUF_187, B_FLAT_35_IBUF_188, B_FLAT_34_IBUF_189, B_FLAT_33_IBUF_190, B_FLAT_32_IBUF_191}),
    .M_AXIS_RESULT_TDATA({\P_BB<1> [31], \P_BB<1> [30], \P_BB<1> [29], \P_BB<1> [28], \P_BB<1> [27], \P_BB<1> [26], \P_BB<1> [25], \P_BB<1> [24], 
\P_BB<1> [23], \P_BB<1> [22], \P_BB<1> [21], \P_BB<1> [20], \P_BB<1> [19], \P_BB<1> [18], \P_BB<1> [17], \P_BB<1> [16], \P_BB<1> [15], \P_BB<1> [14], 
\P_BB<1> [13], \P_BB<1> [12], \P_BB<1> [11], \P_BB<1> [10], \P_BB<1> [9], \P_BB<1> [8], \P_BB<1> [7], \P_BB<1> [6], \P_BB<1> [5], \P_BB<1> [4], 
\P_BB<1> [3], \P_BB<1> [2], \P_BB<1> [1], \P_BB<1> [0]})
  );
  FP_Multiplier   \MUL_BB_LOOP[0].MUL_BB  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(B_VALID_IN_0_IBUF_260),
    .S_AXIS_B_TVALID(B_VALID_IN_0_IBUF_260),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_BB_LOOP[0].MUL_BB_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_BB_LOOP[0].MUL_BB_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_BB_LOOP[0].MUL_BB_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_BB_VALID[0]),
    .S_AXIS_A_TDATA({B_FLAT_31_IBUF_128, B_FLAT_30_IBUF_129, B_FLAT_29_IBUF_130, B_FLAT_28_IBUF_131, B_FLAT_27_IBUF_132, B_FLAT_26_IBUF_133, 
B_FLAT_25_IBUF_134, B_FLAT_24_IBUF_135, B_FLAT_23_IBUF_136, B_FLAT_22_IBUF_137, B_FLAT_21_IBUF_138, B_FLAT_20_IBUF_139, B_FLAT_19_IBUF_140, 
B_FLAT_18_IBUF_141, B_FLAT_17_IBUF_142, B_FLAT_16_IBUF_143, B_FLAT_15_IBUF_144, B_FLAT_14_IBUF_145, B_FLAT_13_IBUF_146, B_FLAT_12_IBUF_147, 
B_FLAT_11_IBUF_148, B_FLAT_10_IBUF_149, B_FLAT_9_IBUF_150, B_FLAT_8_IBUF_151, B_FLAT_7_IBUF_152, B_FLAT_6_IBUF_153, B_FLAT_5_IBUF_154, 
B_FLAT_4_IBUF_155, B_FLAT_3_IBUF_156, B_FLAT_2_IBUF_157, B_FLAT_1_IBUF_158, B_FLAT_0_IBUF_159}),
    .S_AXIS_B_TDATA({B_FLAT_31_IBUF_128, B_FLAT_30_IBUF_129, B_FLAT_29_IBUF_130, B_FLAT_28_IBUF_131, B_FLAT_27_IBUF_132, B_FLAT_26_IBUF_133, 
B_FLAT_25_IBUF_134, B_FLAT_24_IBUF_135, B_FLAT_23_IBUF_136, B_FLAT_22_IBUF_137, B_FLAT_21_IBUF_138, B_FLAT_20_IBUF_139, B_FLAT_19_IBUF_140, 
B_FLAT_18_IBUF_141, B_FLAT_17_IBUF_142, B_FLAT_16_IBUF_143, B_FLAT_15_IBUF_144, B_FLAT_14_IBUF_145, B_FLAT_13_IBUF_146, B_FLAT_12_IBUF_147, 
B_FLAT_11_IBUF_148, B_FLAT_10_IBUF_149, B_FLAT_9_IBUF_150, B_FLAT_8_IBUF_151, B_FLAT_7_IBUF_152, B_FLAT_6_IBUF_153, B_FLAT_5_IBUF_154, 
B_FLAT_4_IBUF_155, B_FLAT_3_IBUF_156, B_FLAT_2_IBUF_157, B_FLAT_1_IBUF_158, B_FLAT_0_IBUF_159}),
    .M_AXIS_RESULT_TDATA({\P_BB<0> [31], \P_BB<0> [30], \P_BB<0> [29], \P_BB<0> [28], \P_BB<0> [27], \P_BB<0> [26], \P_BB<0> [25], \P_BB<0> [24], 
\P_BB<0> [23], \P_BB<0> [22], \P_BB<0> [21], \P_BB<0> [20], \P_BB<0> [19], \P_BB<0> [18], \P_BB<0> [17], \P_BB<0> [16], \P_BB<0> [15], \P_BB<0> [14], 
\P_BB<0> [13], \P_BB<0> [12], \P_BB<0> [11], \P_BB<0> [10], \P_BB<0> [9], \P_BB<0> [8], \P_BB<0> [7], \P_BB<0> [6], \P_BB<0> [5], \P_BB<0> [4], 
\P_BB<0> [3], \P_BB<0> [2], \P_BB<0> [1], \P_BB<0> [0]})
  );
  FP_Multiplier   \MUL_AA_LOOP[3].MUL_AA  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(A_VALID_IN_3_IBUF_259),
    .S_AXIS_B_TVALID(A_VALID_IN_3_IBUF_259),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_AA_LOOP[3].MUL_AA_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_AA_LOOP[3].MUL_AA_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_AA_LOOP[3].MUL_AA_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_AA_VALID[3]),
    .S_AXIS_A_TDATA({A_FLAT_127_IBUF_96, A_FLAT_126_IBUF_97, A_FLAT_125_IBUF_98, A_FLAT_124_IBUF_99, A_FLAT_123_IBUF_100, A_FLAT_122_IBUF_101, 
A_FLAT_121_IBUF_102, A_FLAT_120_IBUF_103, A_FLAT_119_IBUF_104, A_FLAT_118_IBUF_105, A_FLAT_117_IBUF_106, A_FLAT_116_IBUF_107, A_FLAT_115_IBUF_108, 
A_FLAT_114_IBUF_109, A_FLAT_113_IBUF_110, A_FLAT_112_IBUF_111, A_FLAT_111_IBUF_112, A_FLAT_110_IBUF_113, A_FLAT_109_IBUF_114, A_FLAT_108_IBUF_115, 
A_FLAT_107_IBUF_116, A_FLAT_106_IBUF_117, A_FLAT_105_IBUF_118, A_FLAT_104_IBUF_119, A_FLAT_103_IBUF_120, A_FLAT_102_IBUF_121, A_FLAT_101_IBUF_122, 
A_FLAT_100_IBUF_123, A_FLAT_99_IBUF_124, A_FLAT_98_IBUF_125, A_FLAT_97_IBUF_126, A_FLAT_96_IBUF_127}),
    .S_AXIS_B_TDATA({A_FLAT_127_IBUF_96, A_FLAT_126_IBUF_97, A_FLAT_125_IBUF_98, A_FLAT_124_IBUF_99, A_FLAT_123_IBUF_100, A_FLAT_122_IBUF_101, 
A_FLAT_121_IBUF_102, A_FLAT_120_IBUF_103, A_FLAT_119_IBUF_104, A_FLAT_118_IBUF_105, A_FLAT_117_IBUF_106, A_FLAT_116_IBUF_107, A_FLAT_115_IBUF_108, 
A_FLAT_114_IBUF_109, A_FLAT_113_IBUF_110, A_FLAT_112_IBUF_111, A_FLAT_111_IBUF_112, A_FLAT_110_IBUF_113, A_FLAT_109_IBUF_114, A_FLAT_108_IBUF_115, 
A_FLAT_107_IBUF_116, A_FLAT_106_IBUF_117, A_FLAT_105_IBUF_118, A_FLAT_104_IBUF_119, A_FLAT_103_IBUF_120, A_FLAT_102_IBUF_121, A_FLAT_101_IBUF_122, 
A_FLAT_100_IBUF_123, A_FLAT_99_IBUF_124, A_FLAT_98_IBUF_125, A_FLAT_97_IBUF_126, A_FLAT_96_IBUF_127}),
    .M_AXIS_RESULT_TDATA({\P_AA<3> [31], \P_AA<3> [30], \P_AA<3> [29], \P_AA<3> [28], \P_AA<3> [27], \P_AA<3> [26], \P_AA<3> [25], \P_AA<3> [24], 
\P_AA<3> [23], \P_AA<3> [22], \P_AA<3> [21], \P_AA<3> [20], \P_AA<3> [19], \P_AA<3> [18], \P_AA<3> [17], \P_AA<3> [16], \P_AA<3> [15], \P_AA<3> [14], 
\P_AA<3> [13], \P_AA<3> [12], \P_AA<3> [11], \P_AA<3> [10], \P_AA<3> [9], \P_AA<3> [8], \P_AA<3> [7], \P_AA<3> [6], \P_AA<3> [5], \P_AA<3> [4], 
\P_AA<3> [3], \P_AA<3> [2], \P_AA<3> [1], \P_AA<3> [0]})
  );
  FP_Multiplier   \MUL_AA_LOOP[2].MUL_AA  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(A_VALID_IN_2_IBUF_258),
    .S_AXIS_B_TVALID(A_VALID_IN_2_IBUF_258),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_AA_LOOP[2].MUL_AA_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_AA_LOOP[2].MUL_AA_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_AA_LOOP[2].MUL_AA_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_AA_VALID[2]),
    .S_AXIS_A_TDATA({A_FLAT_95_IBUF_64, A_FLAT_94_IBUF_65, A_FLAT_93_IBUF_66, A_FLAT_92_IBUF_67, A_FLAT_91_IBUF_68, A_FLAT_90_IBUF_69, 
A_FLAT_89_IBUF_70, A_FLAT_88_IBUF_71, A_FLAT_87_IBUF_72, A_FLAT_86_IBUF_73, A_FLAT_85_IBUF_74, A_FLAT_84_IBUF_75, A_FLAT_83_IBUF_76, A_FLAT_82_IBUF_77
, A_FLAT_81_IBUF_78, A_FLAT_80_IBUF_79, A_FLAT_79_IBUF_80, A_FLAT_78_IBUF_81, A_FLAT_77_IBUF_82, A_FLAT_76_IBUF_83, A_FLAT_75_IBUF_84, 
A_FLAT_74_IBUF_85, A_FLAT_73_IBUF_86, A_FLAT_72_IBUF_87, A_FLAT_71_IBUF_88, A_FLAT_70_IBUF_89, A_FLAT_69_IBUF_90, A_FLAT_68_IBUF_91, A_FLAT_67_IBUF_92
, A_FLAT_66_IBUF_93, A_FLAT_65_IBUF_94, A_FLAT_64_IBUF_95}),
    .S_AXIS_B_TDATA({A_FLAT_95_IBUF_64, A_FLAT_94_IBUF_65, A_FLAT_93_IBUF_66, A_FLAT_92_IBUF_67, A_FLAT_91_IBUF_68, A_FLAT_90_IBUF_69, 
A_FLAT_89_IBUF_70, A_FLAT_88_IBUF_71, A_FLAT_87_IBUF_72, A_FLAT_86_IBUF_73, A_FLAT_85_IBUF_74, A_FLAT_84_IBUF_75, A_FLAT_83_IBUF_76, A_FLAT_82_IBUF_77
, A_FLAT_81_IBUF_78, A_FLAT_80_IBUF_79, A_FLAT_79_IBUF_80, A_FLAT_78_IBUF_81, A_FLAT_77_IBUF_82, A_FLAT_76_IBUF_83, A_FLAT_75_IBUF_84, 
A_FLAT_74_IBUF_85, A_FLAT_73_IBUF_86, A_FLAT_72_IBUF_87, A_FLAT_71_IBUF_88, A_FLAT_70_IBUF_89, A_FLAT_69_IBUF_90, A_FLAT_68_IBUF_91, A_FLAT_67_IBUF_92
, A_FLAT_66_IBUF_93, A_FLAT_65_IBUF_94, A_FLAT_64_IBUF_95}),
    .M_AXIS_RESULT_TDATA({\P_AA<2> [31], \P_AA<2> [30], \P_AA<2> [29], \P_AA<2> [28], \P_AA<2> [27], \P_AA<2> [26], \P_AA<2> [25], \P_AA<2> [24], 
\P_AA<2> [23], \P_AA<2> [22], \P_AA<2> [21], \P_AA<2> [20], \P_AA<2> [19], \P_AA<2> [18], \P_AA<2> [17], \P_AA<2> [16], \P_AA<2> [15], \P_AA<2> [14], 
\P_AA<2> [13], \P_AA<2> [12], \P_AA<2> [11], \P_AA<2> [10], \P_AA<2> [9], \P_AA<2> [8], \P_AA<2> [7], \P_AA<2> [6], \P_AA<2> [5], \P_AA<2> [4], 
\P_AA<2> [3], \P_AA<2> [2], \P_AA<2> [1], \P_AA<2> [0]})
  );
  FP_Multiplier   \MUL_AA_LOOP[1].MUL_AA  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(A_VALID_IN_1_IBUF_257),
    .S_AXIS_B_TVALID(A_VALID_IN_1_IBUF_257),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_AA_LOOP[1].MUL_AA_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_AA_LOOP[1].MUL_AA_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_AA_LOOP[1].MUL_AA_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_AA_VALID[1]),
    .S_AXIS_A_TDATA({A_FLAT_63_IBUF_32, A_FLAT_62_IBUF_33, A_FLAT_61_IBUF_34, A_FLAT_60_IBUF_35, A_FLAT_59_IBUF_36, A_FLAT_58_IBUF_37, 
A_FLAT_57_IBUF_38, A_FLAT_56_IBUF_39, A_FLAT_55_IBUF_40, A_FLAT_54_IBUF_41, A_FLAT_53_IBUF_42, A_FLAT_52_IBUF_43, A_FLAT_51_IBUF_44, A_FLAT_50_IBUF_45
, A_FLAT_49_IBUF_46, A_FLAT_48_IBUF_47, A_FLAT_47_IBUF_48, A_FLAT_46_IBUF_49, A_FLAT_45_IBUF_50, A_FLAT_44_IBUF_51, A_FLAT_43_IBUF_52, 
A_FLAT_42_IBUF_53, A_FLAT_41_IBUF_54, A_FLAT_40_IBUF_55, A_FLAT_39_IBUF_56, A_FLAT_38_IBUF_57, A_FLAT_37_IBUF_58, A_FLAT_36_IBUF_59, A_FLAT_35_IBUF_60
, A_FLAT_34_IBUF_61, A_FLAT_33_IBUF_62, A_FLAT_32_IBUF_63}),
    .S_AXIS_B_TDATA({A_FLAT_63_IBUF_32, A_FLAT_62_IBUF_33, A_FLAT_61_IBUF_34, A_FLAT_60_IBUF_35, A_FLAT_59_IBUF_36, A_FLAT_58_IBUF_37, 
A_FLAT_57_IBUF_38, A_FLAT_56_IBUF_39, A_FLAT_55_IBUF_40, A_FLAT_54_IBUF_41, A_FLAT_53_IBUF_42, A_FLAT_52_IBUF_43, A_FLAT_51_IBUF_44, A_FLAT_50_IBUF_45
, A_FLAT_49_IBUF_46, A_FLAT_48_IBUF_47, A_FLAT_47_IBUF_48, A_FLAT_46_IBUF_49, A_FLAT_45_IBUF_50, A_FLAT_44_IBUF_51, A_FLAT_43_IBUF_52, 
A_FLAT_42_IBUF_53, A_FLAT_41_IBUF_54, A_FLAT_40_IBUF_55, A_FLAT_39_IBUF_56, A_FLAT_38_IBUF_57, A_FLAT_37_IBUF_58, A_FLAT_36_IBUF_59, A_FLAT_35_IBUF_60
, A_FLAT_34_IBUF_61, A_FLAT_33_IBUF_62, A_FLAT_32_IBUF_63}),
    .M_AXIS_RESULT_TDATA({\P_AA<1> [31], \P_AA<1> [30], \P_AA<1> [29], \P_AA<1> [28], \P_AA<1> [27], \P_AA<1> [26], \P_AA<1> [25], \P_AA<1> [24], 
\P_AA<1> [23], \P_AA<1> [22], \P_AA<1> [21], \P_AA<1> [20], \P_AA<1> [19], \P_AA<1> [18], \P_AA<1> [17], \P_AA<1> [16], \P_AA<1> [15], \P_AA<1> [14], 
\P_AA<1> [13], \P_AA<1> [12], \P_AA<1> [11], \P_AA<1> [10], \P_AA<1> [9], \P_AA<1> [8], \P_AA<1> [7], \P_AA<1> [6], \P_AA<1> [5], \P_AA<1> [4], 
\P_AA<1> [3], \P_AA<1> [2], \P_AA<1> [1], \P_AA<1> [0]})
  );
  FP_Multiplier   \MUL_AA_LOOP[0].MUL_AA  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(A_VALID_IN_0_IBUF_256),
    .S_AXIS_B_TVALID(A_VALID_IN_0_IBUF_256),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_AA_LOOP[0].MUL_AA_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_AA_LOOP[0].MUL_AA_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_AA_LOOP[0].MUL_AA_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_AA_VALID[0]),
    .S_AXIS_A_TDATA({A_FLAT_31_IBUF_0, A_FLAT_30_IBUF_1, A_FLAT_29_IBUF_2, A_FLAT_28_IBUF_3, A_FLAT_27_IBUF_4, A_FLAT_26_IBUF_5, A_FLAT_25_IBUF_6, 
A_FLAT_24_IBUF_7, A_FLAT_23_IBUF_8, A_FLAT_22_IBUF_9, A_FLAT_21_IBUF_10, A_FLAT_20_IBUF_11, A_FLAT_19_IBUF_12, A_FLAT_18_IBUF_13, A_FLAT_17_IBUF_14, 
A_FLAT_16_IBUF_15, A_FLAT_15_IBUF_16, A_FLAT_14_IBUF_17, A_FLAT_13_IBUF_18, A_FLAT_12_IBUF_19, A_FLAT_11_IBUF_20, A_FLAT_10_IBUF_21, A_FLAT_9_IBUF_22
, A_FLAT_8_IBUF_23, A_FLAT_7_IBUF_24, A_FLAT_6_IBUF_25, A_FLAT_5_IBUF_26, A_FLAT_4_IBUF_27, A_FLAT_3_IBUF_28, A_FLAT_2_IBUF_29, A_FLAT_1_IBUF_30, 
A_FLAT_0_IBUF_31}),
    .S_AXIS_B_TDATA({A_FLAT_31_IBUF_0, A_FLAT_30_IBUF_1, A_FLAT_29_IBUF_2, A_FLAT_28_IBUF_3, A_FLAT_27_IBUF_4, A_FLAT_26_IBUF_5, A_FLAT_25_IBUF_6, 
A_FLAT_24_IBUF_7, A_FLAT_23_IBUF_8, A_FLAT_22_IBUF_9, A_FLAT_21_IBUF_10, A_FLAT_20_IBUF_11, A_FLAT_19_IBUF_12, A_FLAT_18_IBUF_13, A_FLAT_17_IBUF_14, 
A_FLAT_16_IBUF_15, A_FLAT_15_IBUF_16, A_FLAT_14_IBUF_17, A_FLAT_13_IBUF_18, A_FLAT_12_IBUF_19, A_FLAT_11_IBUF_20, A_FLAT_10_IBUF_21, A_FLAT_9_IBUF_22
, A_FLAT_8_IBUF_23, A_FLAT_7_IBUF_24, A_FLAT_6_IBUF_25, A_FLAT_5_IBUF_26, A_FLAT_4_IBUF_27, A_FLAT_3_IBUF_28, A_FLAT_2_IBUF_29, A_FLAT_1_IBUF_30, 
A_FLAT_0_IBUF_31}),
    .M_AXIS_RESULT_TDATA({\P_AA<0> [31], \P_AA<0> [30], \P_AA<0> [29], \P_AA<0> [28], \P_AA<0> [27], \P_AA<0> [26], \P_AA<0> [25], \P_AA<0> [24], 
\P_AA<0> [23], \P_AA<0> [22], \P_AA<0> [21], \P_AA<0> [20], \P_AA<0> [19], \P_AA<0> [18], \P_AA<0> [17], \P_AA<0> [16], \P_AA<0> [15], \P_AA<0> [14], 
\P_AA<0> [13], \P_AA<0> [12], \P_AA<0> [11], \P_AA<0> [10], \P_AA<0> [9], \P_AA<0> [8], \P_AA<0> [7], \P_AA<0> [6], \P_AA<0> [5], \P_AA<0> [4], 
\P_AA<0> [3], \P_AA<0> [2], \P_AA<0> [1], \P_AA<0> [0]})
  );
  FP_Multiplier   \MUL_AB_LOOP[3].MUL_AB  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(A_VALID_IN_3_IBUF_259),
    .S_AXIS_B_TVALID(B_VALID_IN_3_IBUF_263),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_AB_LOOP[3].MUL_AB_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_AB_LOOP[3].MUL_AB_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_AB_LOOP[3].MUL_AB_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_AB_VALID[3]),
    .S_AXIS_A_TDATA({A_FLAT_127_IBUF_96, A_FLAT_126_IBUF_97, A_FLAT_125_IBUF_98, A_FLAT_124_IBUF_99, A_FLAT_123_IBUF_100, A_FLAT_122_IBUF_101, 
A_FLAT_121_IBUF_102, A_FLAT_120_IBUF_103, A_FLAT_119_IBUF_104, A_FLAT_118_IBUF_105, A_FLAT_117_IBUF_106, A_FLAT_116_IBUF_107, A_FLAT_115_IBUF_108, 
A_FLAT_114_IBUF_109, A_FLAT_113_IBUF_110, A_FLAT_112_IBUF_111, A_FLAT_111_IBUF_112, A_FLAT_110_IBUF_113, A_FLAT_109_IBUF_114, A_FLAT_108_IBUF_115, 
A_FLAT_107_IBUF_116, A_FLAT_106_IBUF_117, A_FLAT_105_IBUF_118, A_FLAT_104_IBUF_119, A_FLAT_103_IBUF_120, A_FLAT_102_IBUF_121, A_FLAT_101_IBUF_122, 
A_FLAT_100_IBUF_123, A_FLAT_99_IBUF_124, A_FLAT_98_IBUF_125, A_FLAT_97_IBUF_126, A_FLAT_96_IBUF_127}),
    .S_AXIS_B_TDATA({B_FLAT_127_IBUF_224, B_FLAT_126_IBUF_225, B_FLAT_125_IBUF_226, B_FLAT_124_IBUF_227, B_FLAT_123_IBUF_228, B_FLAT_122_IBUF_229, 
B_FLAT_121_IBUF_230, B_FLAT_120_IBUF_231, B_FLAT_119_IBUF_232, B_FLAT_118_IBUF_233, B_FLAT_117_IBUF_234, B_FLAT_116_IBUF_235, B_FLAT_115_IBUF_236, 
B_FLAT_114_IBUF_237, B_FLAT_113_IBUF_238, B_FLAT_112_IBUF_239, B_FLAT_111_IBUF_240, B_FLAT_110_IBUF_241, B_FLAT_109_IBUF_242, B_FLAT_108_IBUF_243, 
B_FLAT_107_IBUF_244, B_FLAT_106_IBUF_245, B_FLAT_105_IBUF_246, B_FLAT_104_IBUF_247, B_FLAT_103_IBUF_248, B_FLAT_102_IBUF_249, B_FLAT_101_IBUF_250, 
B_FLAT_100_IBUF_251, B_FLAT_99_IBUF_252, B_FLAT_98_IBUF_253, B_FLAT_97_IBUF_254, B_FLAT_96_IBUF_255}),
    .M_AXIS_RESULT_TDATA({\P_AB<3> [31], \P_AB<3> [30], \P_AB<3> [29], \P_AB<3> [28], \P_AB<3> [27], \P_AB<3> [26], \P_AB<3> [25], \P_AB<3> [24], 
\P_AB<3> [23], \P_AB<3> [22], \P_AB<3> [21], \P_AB<3> [20], \P_AB<3> [19], \P_AB<3> [18], \P_AB<3> [17], \P_AB<3> [16], \P_AB<3> [15], \P_AB<3> [14], 
\P_AB<3> [13], \P_AB<3> [12], \P_AB<3> [11], \P_AB<3> [10], \P_AB<3> [9], \P_AB<3> [8], \P_AB<3> [7], \P_AB<3> [6], \P_AB<3> [5], \P_AB<3> [4], 
\P_AB<3> [3], \P_AB<3> [2], \P_AB<3> [1], \P_AB<3> [0]})
  );
  FP_Multiplier   \MUL_AB_LOOP[2].MUL_AB  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(A_VALID_IN_2_IBUF_258),
    .S_AXIS_B_TVALID(B_VALID_IN_2_IBUF_262),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_AB_LOOP[2].MUL_AB_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_AB_LOOP[2].MUL_AB_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_AB_LOOP[2].MUL_AB_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_AB_VALID[2]),
    .S_AXIS_A_TDATA({A_FLAT_95_IBUF_64, A_FLAT_94_IBUF_65, A_FLAT_93_IBUF_66, A_FLAT_92_IBUF_67, A_FLAT_91_IBUF_68, A_FLAT_90_IBUF_69, 
A_FLAT_89_IBUF_70, A_FLAT_88_IBUF_71, A_FLAT_87_IBUF_72, A_FLAT_86_IBUF_73, A_FLAT_85_IBUF_74, A_FLAT_84_IBUF_75, A_FLAT_83_IBUF_76, A_FLAT_82_IBUF_77
, A_FLAT_81_IBUF_78, A_FLAT_80_IBUF_79, A_FLAT_79_IBUF_80, A_FLAT_78_IBUF_81, A_FLAT_77_IBUF_82, A_FLAT_76_IBUF_83, A_FLAT_75_IBUF_84, 
A_FLAT_74_IBUF_85, A_FLAT_73_IBUF_86, A_FLAT_72_IBUF_87, A_FLAT_71_IBUF_88, A_FLAT_70_IBUF_89, A_FLAT_69_IBUF_90, A_FLAT_68_IBUF_91, A_FLAT_67_IBUF_92
, A_FLAT_66_IBUF_93, A_FLAT_65_IBUF_94, A_FLAT_64_IBUF_95}),
    .S_AXIS_B_TDATA({B_FLAT_95_IBUF_192, B_FLAT_94_IBUF_193, B_FLAT_93_IBUF_194, B_FLAT_92_IBUF_195, B_FLAT_91_IBUF_196, B_FLAT_90_IBUF_197, 
B_FLAT_89_IBUF_198, B_FLAT_88_IBUF_199, B_FLAT_87_IBUF_200, B_FLAT_86_IBUF_201, B_FLAT_85_IBUF_202, B_FLAT_84_IBUF_203, B_FLAT_83_IBUF_204, 
B_FLAT_82_IBUF_205, B_FLAT_81_IBUF_206, B_FLAT_80_IBUF_207, B_FLAT_79_IBUF_208, B_FLAT_78_IBUF_209, B_FLAT_77_IBUF_210, B_FLAT_76_IBUF_211, 
B_FLAT_75_IBUF_212, B_FLAT_74_IBUF_213, B_FLAT_73_IBUF_214, B_FLAT_72_IBUF_215, B_FLAT_71_IBUF_216, B_FLAT_70_IBUF_217, B_FLAT_69_IBUF_218, 
B_FLAT_68_IBUF_219, B_FLAT_67_IBUF_220, B_FLAT_66_IBUF_221, B_FLAT_65_IBUF_222, B_FLAT_64_IBUF_223}),
    .M_AXIS_RESULT_TDATA({\P_AB<2> [31], \P_AB<2> [30], \P_AB<2> [29], \P_AB<2> [28], \P_AB<2> [27], \P_AB<2> [26], \P_AB<2> [25], \P_AB<2> [24], 
\P_AB<2> [23], \P_AB<2> [22], \P_AB<2> [21], \P_AB<2> [20], \P_AB<2> [19], \P_AB<2> [18], \P_AB<2> [17], \P_AB<2> [16], \P_AB<2> [15], \P_AB<2> [14], 
\P_AB<2> [13], \P_AB<2> [12], \P_AB<2> [11], \P_AB<2> [10], \P_AB<2> [9], \P_AB<2> [8], \P_AB<2> [7], \P_AB<2> [6], \P_AB<2> [5], \P_AB<2> [4], 
\P_AB<2> [3], \P_AB<2> [2], \P_AB<2> [1], \P_AB<2> [0]})
  );
  FP_Multiplier   \MUL_AB_LOOP[1].MUL_AB  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(A_VALID_IN_1_IBUF_257),
    .S_AXIS_B_TVALID(B_VALID_IN_1_IBUF_261),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_AB_LOOP[1].MUL_AB_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_AB_LOOP[1].MUL_AB_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_AB_LOOP[1].MUL_AB_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_AB_VALID[1]),
    .S_AXIS_A_TDATA({A_FLAT_63_IBUF_32, A_FLAT_62_IBUF_33, A_FLAT_61_IBUF_34, A_FLAT_60_IBUF_35, A_FLAT_59_IBUF_36, A_FLAT_58_IBUF_37, 
A_FLAT_57_IBUF_38, A_FLAT_56_IBUF_39, A_FLAT_55_IBUF_40, A_FLAT_54_IBUF_41, A_FLAT_53_IBUF_42, A_FLAT_52_IBUF_43, A_FLAT_51_IBUF_44, A_FLAT_50_IBUF_45
, A_FLAT_49_IBUF_46, A_FLAT_48_IBUF_47, A_FLAT_47_IBUF_48, A_FLAT_46_IBUF_49, A_FLAT_45_IBUF_50, A_FLAT_44_IBUF_51, A_FLAT_43_IBUF_52, 
A_FLAT_42_IBUF_53, A_FLAT_41_IBUF_54, A_FLAT_40_IBUF_55, A_FLAT_39_IBUF_56, A_FLAT_38_IBUF_57, A_FLAT_37_IBUF_58, A_FLAT_36_IBUF_59, A_FLAT_35_IBUF_60
, A_FLAT_34_IBUF_61, A_FLAT_33_IBUF_62, A_FLAT_32_IBUF_63}),
    .S_AXIS_B_TDATA({B_FLAT_63_IBUF_160, B_FLAT_62_IBUF_161, B_FLAT_61_IBUF_162, B_FLAT_60_IBUF_163, B_FLAT_59_IBUF_164, B_FLAT_58_IBUF_165, 
B_FLAT_57_IBUF_166, B_FLAT_56_IBUF_167, B_FLAT_55_IBUF_168, B_FLAT_54_IBUF_169, B_FLAT_53_IBUF_170, B_FLAT_52_IBUF_171, B_FLAT_51_IBUF_172, 
B_FLAT_50_IBUF_173, B_FLAT_49_IBUF_174, B_FLAT_48_IBUF_175, B_FLAT_47_IBUF_176, B_FLAT_46_IBUF_177, B_FLAT_45_IBUF_178, B_FLAT_44_IBUF_179, 
B_FLAT_43_IBUF_180, B_FLAT_42_IBUF_181, B_FLAT_41_IBUF_182, B_FLAT_40_IBUF_183, B_FLAT_39_IBUF_184, B_FLAT_38_IBUF_185, B_FLAT_37_IBUF_186, 
B_FLAT_36_IBUF_187, B_FLAT_35_IBUF_188, B_FLAT_34_IBUF_189, B_FLAT_33_IBUF_190, B_FLAT_32_IBUF_191}),
    .M_AXIS_RESULT_TDATA({\P_AB<1> [31], \P_AB<1> [30], \P_AB<1> [29], \P_AB<1> [28], \P_AB<1> [27], \P_AB<1> [26], \P_AB<1> [25], \P_AB<1> [24], 
\P_AB<1> [23], \P_AB<1> [22], \P_AB<1> [21], \P_AB<1> [20], \P_AB<1> [19], \P_AB<1> [18], \P_AB<1> [17], \P_AB<1> [16], \P_AB<1> [15], \P_AB<1> [14], 
\P_AB<1> [13], \P_AB<1> [12], \P_AB<1> [11], \P_AB<1> [10], \P_AB<1> [9], \P_AB<1> [8], \P_AB<1> [7], \P_AB<1> [6], \P_AB<1> [5], \P_AB<1> [4], 
\P_AB<1> [3], \P_AB<1> [2], \P_AB<1> [1], \P_AB<1> [0]})
  );
  FP_Multiplier   \MUL_AB_LOOP[0].MUL_AB  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(A_VALID_IN_0_IBUF_256),
    .S_AXIS_B_TVALID(B_VALID_IN_0_IBUF_260),
    .M_AXIS_RESULT_TREADY(\NLW_MUL_AB_LOOP[0].MUL_AB_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_MUL_AB_LOOP[0].MUL_AB_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_MUL_AB_LOOP[0].MUL_AB_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(P_AB_VALID[0]),
    .S_AXIS_A_TDATA({A_FLAT_31_IBUF_0, A_FLAT_30_IBUF_1, A_FLAT_29_IBUF_2, A_FLAT_28_IBUF_3, A_FLAT_27_IBUF_4, A_FLAT_26_IBUF_5, A_FLAT_25_IBUF_6, 
A_FLAT_24_IBUF_7, A_FLAT_23_IBUF_8, A_FLAT_22_IBUF_9, A_FLAT_21_IBUF_10, A_FLAT_20_IBUF_11, A_FLAT_19_IBUF_12, A_FLAT_18_IBUF_13, A_FLAT_17_IBUF_14, 
A_FLAT_16_IBUF_15, A_FLAT_15_IBUF_16, A_FLAT_14_IBUF_17, A_FLAT_13_IBUF_18, A_FLAT_12_IBUF_19, A_FLAT_11_IBUF_20, A_FLAT_10_IBUF_21, A_FLAT_9_IBUF_22
, A_FLAT_8_IBUF_23, A_FLAT_7_IBUF_24, A_FLAT_6_IBUF_25, A_FLAT_5_IBUF_26, A_FLAT_4_IBUF_27, A_FLAT_3_IBUF_28, A_FLAT_2_IBUF_29, A_FLAT_1_IBUF_30, 
A_FLAT_0_IBUF_31}),
    .S_AXIS_B_TDATA({B_FLAT_31_IBUF_128, B_FLAT_30_IBUF_129, B_FLAT_29_IBUF_130, B_FLAT_28_IBUF_131, B_FLAT_27_IBUF_132, B_FLAT_26_IBUF_133, 
B_FLAT_25_IBUF_134, B_FLAT_24_IBUF_135, B_FLAT_23_IBUF_136, B_FLAT_22_IBUF_137, B_FLAT_21_IBUF_138, B_FLAT_20_IBUF_139, B_FLAT_19_IBUF_140, 
B_FLAT_18_IBUF_141, B_FLAT_17_IBUF_142, B_FLAT_16_IBUF_143, B_FLAT_15_IBUF_144, B_FLAT_14_IBUF_145, B_FLAT_13_IBUF_146, B_FLAT_12_IBUF_147, 
B_FLAT_11_IBUF_148, B_FLAT_10_IBUF_149, B_FLAT_9_IBUF_150, B_FLAT_8_IBUF_151, B_FLAT_7_IBUF_152, B_FLAT_6_IBUF_153, B_FLAT_5_IBUF_154, 
B_FLAT_4_IBUF_155, B_FLAT_3_IBUF_156, B_FLAT_2_IBUF_157, B_FLAT_1_IBUF_158, B_FLAT_0_IBUF_159}),
    .M_AXIS_RESULT_TDATA({\P_AB<0> [31], \P_AB<0> [30], \P_AB<0> [29], \P_AB<0> [28], \P_AB<0> [27], \P_AB<0> [26], \P_AB<0> [25], \P_AB<0> [24], 
\P_AB<0> [23], \P_AB<0> [22], \P_AB<0> [21], \P_AB<0> [20], \P_AB<0> [19], \P_AB<0> [18], \P_AB<0> [17], \P_AB<0> [16], \P_AB<0> [15], \P_AB<0> [14], 
\P_AB<0> [13], \P_AB<0> [12], \P_AB<0> [11], \P_AB<0> [10], \P_AB<0> [9], \P_AB<0> [8], \P_AB<0> [7], \P_AB<0> [6], \P_AB<0> [5], \P_AB<0> [4], 
\P_AB<0> [3], \P_AB<0> [2], \P_AB<0> [1], \P_AB<0> [0]})
  );
  FP_Adder   \NORM_B_CHAIN.NORM_B_ADD_CHAIN[3].ADDBK  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(SUM_BB_VALID[1]),
    .S_AXIS_B_TVALID(P_BB_VALID[3]),
    .M_AXIS_RESULT_TREADY(\NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[3].ADDBK_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[3].ADDBK_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[3].ADDBK_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(SUM_BB_VALID[2]),
    .S_AXIS_A_TDATA({\SUM_BB<1> [31], \SUM_BB<1> [30], \SUM_BB<1> [29], \SUM_BB<1> [28], \SUM_BB<1> [27], \SUM_BB<1> [26], \SUM_BB<1> [25], 
\SUM_BB<1> [24], \SUM_BB<1> [23], \SUM_BB<1> [22], \SUM_BB<1> [21], \SUM_BB<1> [20], \SUM_BB<1> [19], \SUM_BB<1> [18], \SUM_BB<1> [17], 
\SUM_BB<1> [16], \SUM_BB<1> [15], \SUM_BB<1> [14], \SUM_BB<1> [13], \SUM_BB<1> [12], \SUM_BB<1> [11], \SUM_BB<1> [10], \SUM_BB<1> [9], \SUM_BB<1> [8]
, \SUM_BB<1> [7], \SUM_BB<1> [6], \SUM_BB<1> [5], \SUM_BB<1> [4], \SUM_BB<1> [3], \SUM_BB<1> [2], \SUM_BB<1> [1], \SUM_BB<1> [0]}),
    .S_AXIS_B_TDATA({\P_BB<3> [31], \P_BB<3> [30], \P_BB<3> [29], \P_BB<3> [28], \P_BB<3> [27], \P_BB<3> [26], \P_BB<3> [25], \P_BB<3> [24], 
\P_BB<3> [23], \P_BB<3> [22], \P_BB<3> [21], \P_BB<3> [20], \P_BB<3> [19], \P_BB<3> [18], \P_BB<3> [17], \P_BB<3> [16], \P_BB<3> [15], \P_BB<3> [14], 
\P_BB<3> [13], \P_BB<3> [12], \P_BB<3> [11], \P_BB<3> [10], \P_BB<3> [9], \P_BB<3> [8], \P_BB<3> [7], \P_BB<3> [6], \P_BB<3> [5], \P_BB<3> [4], 
\P_BB<3> [3], \P_BB<3> [2], \P_BB<3> [1], \P_BB<3> [0]}),
    .M_AXIS_RESULT_TDATA({\SUM_BB<2> [31], \SUM_BB<2> [30], \SUM_BB<2> [29], \SUM_BB<2> [28], \SUM_BB<2> [27], \SUM_BB<2> [26], \SUM_BB<2> [25], 
\SUM_BB<2> [24], \SUM_BB<2> [23], \SUM_BB<2> [22], \SUM_BB<2> [21], \SUM_BB<2> [20], \SUM_BB<2> [19], \SUM_BB<2> [18], \SUM_BB<2> [17], 
\SUM_BB<2> [16], \SUM_BB<2> [15], \SUM_BB<2> [14], \SUM_BB<2> [13], \SUM_BB<2> [12], \SUM_BB<2> [11], \SUM_BB<2> [10], \SUM_BB<2> [9], \SUM_BB<2> [8]
, \SUM_BB<2> [7], \SUM_BB<2> [6], \SUM_BB<2> [5], \SUM_BB<2> [4], \SUM_BB<2> [3], \SUM_BB<2> [2], \SUM_BB<2> [1], \SUM_BB<2> [0]})
  );
  FP_Adder   \NORM_B_CHAIN.NORM_B_ADD_CHAIN[2].ADDBK  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(SUM_BB_VALID[0]),
    .S_AXIS_B_TVALID(P_BB_VALID[2]),
    .M_AXIS_RESULT_TREADY(\NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[2].ADDBK_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[2].ADDBK_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_NORM_B_CHAIN.NORM_B_ADD_CHAIN[2].ADDBK_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(SUM_BB_VALID[1]),
    .S_AXIS_A_TDATA({\SUM_BB<0> [31], \SUM_BB<0> [30], \SUM_BB<0> [29], \SUM_BB<0> [28], \SUM_BB<0> [27], \SUM_BB<0> [26], \SUM_BB<0> [25], 
\SUM_BB<0> [24], \SUM_BB<0> [23], \SUM_BB<0> [22], \SUM_BB<0> [21], \SUM_BB<0> [20], \SUM_BB<0> [19], \SUM_BB<0> [18], \SUM_BB<0> [17], 
\SUM_BB<0> [16], \SUM_BB<0> [15], \SUM_BB<0> [14], \SUM_BB<0> [13], \SUM_BB<0> [12], \SUM_BB<0> [11], \SUM_BB<0> [10], \SUM_BB<0> [9], \SUM_BB<0> [8]
, \SUM_BB<0> [7], \SUM_BB<0> [6], \SUM_BB<0> [5], \SUM_BB<0> [4], \SUM_BB<0> [3], \SUM_BB<0> [2], \SUM_BB<0> [1], \SUM_BB<0> [0]}),
    .S_AXIS_B_TDATA({\P_BB<2> [31], \P_BB<2> [30], \P_BB<2> [29], \P_BB<2> [28], \P_BB<2> [27], \P_BB<2> [26], \P_BB<2> [25], \P_BB<2> [24], 
\P_BB<2> [23], \P_BB<2> [22], \P_BB<2> [21], \P_BB<2> [20], \P_BB<2> [19], \P_BB<2> [18], \P_BB<2> [17], \P_BB<2> [16], \P_BB<2> [15], \P_BB<2> [14], 
\P_BB<2> [13], \P_BB<2> [12], \P_BB<2> [11], \P_BB<2> [10], \P_BB<2> [9], \P_BB<2> [8], \P_BB<2> [7], \P_BB<2> [6], \P_BB<2> [5], \P_BB<2> [4], 
\P_BB<2> [3], \P_BB<2> [2], \P_BB<2> [1], \P_BB<2> [0]}),
    .M_AXIS_RESULT_TDATA({\SUM_BB<1> [31], \SUM_BB<1> [30], \SUM_BB<1> [29], \SUM_BB<1> [28], \SUM_BB<1> [27], \SUM_BB<1> [26], \SUM_BB<1> [25], 
\SUM_BB<1> [24], \SUM_BB<1> [23], \SUM_BB<1> [22], \SUM_BB<1> [21], \SUM_BB<1> [20], \SUM_BB<1> [19], \SUM_BB<1> [18], \SUM_BB<1> [17], 
\SUM_BB<1> [16], \SUM_BB<1> [15], \SUM_BB<1> [14], \SUM_BB<1> [13], \SUM_BB<1> [12], \SUM_BB<1> [11], \SUM_BB<1> [10], \SUM_BB<1> [9], \SUM_BB<1> [8]
, \SUM_BB<1> [7], \SUM_BB<1> [6], \SUM_BB<1> [5], \SUM_BB<1> [4], \SUM_BB<1> [3], \SUM_BB<1> [2], \SUM_BB<1> [1], \SUM_BB<1> [0]})
  );
  FP_Adder   \NORM_B_CHAIN.ADDB0  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(P_BB_VALID[0]),
    .S_AXIS_B_TVALID(P_BB_VALID[1]),
    .M_AXIS_RESULT_TREADY(\NLW_NORM_B_CHAIN.ADDB0_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_NORM_B_CHAIN.ADDB0_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_NORM_B_CHAIN.ADDB0_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(SUM_BB_VALID[0]),
    .S_AXIS_A_TDATA({\P_BB<0> [31], \P_BB<0> [30], \P_BB<0> [29], \P_BB<0> [28], \P_BB<0> [27], \P_BB<0> [26], \P_BB<0> [25], \P_BB<0> [24], 
\P_BB<0> [23], \P_BB<0> [22], \P_BB<0> [21], \P_BB<0> [20], \P_BB<0> [19], \P_BB<0> [18], \P_BB<0> [17], \P_BB<0> [16], \P_BB<0> [15], \P_BB<0> [14], 
\P_BB<0> [13], \P_BB<0> [12], \P_BB<0> [11], \P_BB<0> [10], \P_BB<0> [9], \P_BB<0> [8], \P_BB<0> [7], \P_BB<0> [6], \P_BB<0> [5], \P_BB<0> [4], 
\P_BB<0> [3], \P_BB<0> [2], \P_BB<0> [1], \P_BB<0> [0]}),
    .S_AXIS_B_TDATA({\P_BB<1> [31], \P_BB<1> [30], \P_BB<1> [29], \P_BB<1> [28], \P_BB<1> [27], \P_BB<1> [26], \P_BB<1> [25], \P_BB<1> [24], 
\P_BB<1> [23], \P_BB<1> [22], \P_BB<1> [21], \P_BB<1> [20], \P_BB<1> [19], \P_BB<1> [18], \P_BB<1> [17], \P_BB<1> [16], \P_BB<1> [15], \P_BB<1> [14], 
\P_BB<1> [13], \P_BB<1> [12], \P_BB<1> [11], \P_BB<1> [10], \P_BB<1> [9], \P_BB<1> [8], \P_BB<1> [7], \P_BB<1> [6], \P_BB<1> [5], \P_BB<1> [4], 
\P_BB<1> [3], \P_BB<1> [2], \P_BB<1> [1], \P_BB<1> [0]}),
    .M_AXIS_RESULT_TDATA({\SUM_BB<0> [31], \SUM_BB<0> [30], \SUM_BB<0> [29], \SUM_BB<0> [28], \SUM_BB<0> [27], \SUM_BB<0> [26], \SUM_BB<0> [25], 
\SUM_BB<0> [24], \SUM_BB<0> [23], \SUM_BB<0> [22], \SUM_BB<0> [21], \SUM_BB<0> [20], \SUM_BB<0> [19], \SUM_BB<0> [18], \SUM_BB<0> [17], 
\SUM_BB<0> [16], \SUM_BB<0> [15], \SUM_BB<0> [14], \SUM_BB<0> [13], \SUM_BB<0> [12], \SUM_BB<0> [11], \SUM_BB<0> [10], \SUM_BB<0> [9], \SUM_BB<0> [8]
, \SUM_BB<0> [7], \SUM_BB<0> [6], \SUM_BB<0> [5], \SUM_BB<0> [4], \SUM_BB<0> [3], \SUM_BB<0> [2], \SUM_BB<0> [1], \SUM_BB<0> [0]})
  );
  FP_Adder   \NORM_A_CHAIN.NORM_A_ADD_CHAIN[3].ADDAK  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(SUM_AA_VALID[1]),
    .S_AXIS_B_TVALID(P_AA_VALID[3]),
    .M_AXIS_RESULT_TREADY(\NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[3].ADDAK_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[3].ADDAK_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[3].ADDAK_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(SUM_AA_VALID[2]),
    .S_AXIS_A_TDATA({\SUM_AA<1> [31], \SUM_AA<1> [30], \SUM_AA<1> [29], \SUM_AA<1> [28], \SUM_AA<1> [27], \SUM_AA<1> [26], \SUM_AA<1> [25], 
\SUM_AA<1> [24], \SUM_AA<1> [23], \SUM_AA<1> [22], \SUM_AA<1> [21], \SUM_AA<1> [20], \SUM_AA<1> [19], \SUM_AA<1> [18], \SUM_AA<1> [17], 
\SUM_AA<1> [16], \SUM_AA<1> [15], \SUM_AA<1> [14], \SUM_AA<1> [13], \SUM_AA<1> [12], \SUM_AA<1> [11], \SUM_AA<1> [10], \SUM_AA<1> [9], \SUM_AA<1> [8]
, \SUM_AA<1> [7], \SUM_AA<1> [6], \SUM_AA<1> [5], \SUM_AA<1> [4], \SUM_AA<1> [3], \SUM_AA<1> [2], \SUM_AA<1> [1], \SUM_AA<1> [0]}),
    .S_AXIS_B_TDATA({\P_AA<3> [31], \P_AA<3> [30], \P_AA<3> [29], \P_AA<3> [28], \P_AA<3> [27], \P_AA<3> [26], \P_AA<3> [25], \P_AA<3> [24], 
\P_AA<3> [23], \P_AA<3> [22], \P_AA<3> [21], \P_AA<3> [20], \P_AA<3> [19], \P_AA<3> [18], \P_AA<3> [17], \P_AA<3> [16], \P_AA<3> [15], \P_AA<3> [14], 
\P_AA<3> [13], \P_AA<3> [12], \P_AA<3> [11], \P_AA<3> [10], \P_AA<3> [9], \P_AA<3> [8], \P_AA<3> [7], \P_AA<3> [6], \P_AA<3> [5], \P_AA<3> [4], 
\P_AA<3> [3], \P_AA<3> [2], \P_AA<3> [1], \P_AA<3> [0]}),
    .M_AXIS_RESULT_TDATA({\SUM_AA<2> [31], \SUM_AA<2> [30], \SUM_AA<2> [29], \SUM_AA<2> [28], \SUM_AA<2> [27], \SUM_AA<2> [26], \SUM_AA<2> [25], 
\SUM_AA<2> [24], \SUM_AA<2> [23], \SUM_AA<2> [22], \SUM_AA<2> [21], \SUM_AA<2> [20], \SUM_AA<2> [19], \SUM_AA<2> [18], \SUM_AA<2> [17], 
\SUM_AA<2> [16], \SUM_AA<2> [15], \SUM_AA<2> [14], \SUM_AA<2> [13], \SUM_AA<2> [12], \SUM_AA<2> [11], \SUM_AA<2> [10], \SUM_AA<2> [9], \SUM_AA<2> [8]
, \SUM_AA<2> [7], \SUM_AA<2> [6], \SUM_AA<2> [5], \SUM_AA<2> [4], \SUM_AA<2> [3], \SUM_AA<2> [2], \SUM_AA<2> [1], \SUM_AA<2> [0]})
  );
  FP_Adder   \NORM_A_CHAIN.NORM_A_ADD_CHAIN[2].ADDAK  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(SUM_AA_VALID[0]),
    .S_AXIS_B_TVALID(P_AA_VALID[2]),
    .M_AXIS_RESULT_TREADY(\NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[2].ADDAK_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[2].ADDAK_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_NORM_A_CHAIN.NORM_A_ADD_CHAIN[2].ADDAK_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(SUM_AA_VALID[1]),
    .S_AXIS_A_TDATA({\SUM_AA<0> [31], \SUM_AA<0> [30], \SUM_AA<0> [29], \SUM_AA<0> [28], \SUM_AA<0> [27], \SUM_AA<0> [26], \SUM_AA<0> [25], 
\SUM_AA<0> [24], \SUM_AA<0> [23], \SUM_AA<0> [22], \SUM_AA<0> [21], \SUM_AA<0> [20], \SUM_AA<0> [19], \SUM_AA<0> [18], \SUM_AA<0> [17], 
\SUM_AA<0> [16], \SUM_AA<0> [15], \SUM_AA<0> [14], \SUM_AA<0> [13], \SUM_AA<0> [12], \SUM_AA<0> [11], \SUM_AA<0> [10], \SUM_AA<0> [9], \SUM_AA<0> [8]
, \SUM_AA<0> [7], \SUM_AA<0> [6], \SUM_AA<0> [5], \SUM_AA<0> [4], \SUM_AA<0> [3], \SUM_AA<0> [2], \SUM_AA<0> [1], \SUM_AA<0> [0]}),
    .S_AXIS_B_TDATA({\P_AA<2> [31], \P_AA<2> [30], \P_AA<2> [29], \P_AA<2> [28], \P_AA<2> [27], \P_AA<2> [26], \P_AA<2> [25], \P_AA<2> [24], 
\P_AA<2> [23], \P_AA<2> [22], \P_AA<2> [21], \P_AA<2> [20], \P_AA<2> [19], \P_AA<2> [18], \P_AA<2> [17], \P_AA<2> [16], \P_AA<2> [15], \P_AA<2> [14], 
\P_AA<2> [13], \P_AA<2> [12], \P_AA<2> [11], \P_AA<2> [10], \P_AA<2> [9], \P_AA<2> [8], \P_AA<2> [7], \P_AA<2> [6], \P_AA<2> [5], \P_AA<2> [4], 
\P_AA<2> [3], \P_AA<2> [2], \P_AA<2> [1], \P_AA<2> [0]}),
    .M_AXIS_RESULT_TDATA({\SUM_AA<1> [31], \SUM_AA<1> [30], \SUM_AA<1> [29], \SUM_AA<1> [28], \SUM_AA<1> [27], \SUM_AA<1> [26], \SUM_AA<1> [25], 
\SUM_AA<1> [24], \SUM_AA<1> [23], \SUM_AA<1> [22], \SUM_AA<1> [21], \SUM_AA<1> [20], \SUM_AA<1> [19], \SUM_AA<1> [18], \SUM_AA<1> [17], 
\SUM_AA<1> [16], \SUM_AA<1> [15], \SUM_AA<1> [14], \SUM_AA<1> [13], \SUM_AA<1> [12], \SUM_AA<1> [11], \SUM_AA<1> [10], \SUM_AA<1> [9], \SUM_AA<1> [8]
, \SUM_AA<1> [7], \SUM_AA<1> [6], \SUM_AA<1> [5], \SUM_AA<1> [4], \SUM_AA<1> [3], \SUM_AA<1> [2], \SUM_AA<1> [1], \SUM_AA<1> [0]})
  );
  FP_Adder   \NORM_A_CHAIN.ADDA0  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(P_AA_VALID[0]),
    .S_AXIS_B_TVALID(P_AA_VALID[1]),
    .M_AXIS_RESULT_TREADY(\NLW_NORM_A_CHAIN.ADDA0_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_NORM_A_CHAIN.ADDA0_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_NORM_A_CHAIN.ADDA0_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(SUM_AA_VALID[0]),
    .S_AXIS_A_TDATA({\P_AA<0> [31], \P_AA<0> [30], \P_AA<0> [29], \P_AA<0> [28], \P_AA<0> [27], \P_AA<0> [26], \P_AA<0> [25], \P_AA<0> [24], 
\P_AA<0> [23], \P_AA<0> [22], \P_AA<0> [21], \P_AA<0> [20], \P_AA<0> [19], \P_AA<0> [18], \P_AA<0> [17], \P_AA<0> [16], \P_AA<0> [15], \P_AA<0> [14], 
\P_AA<0> [13], \P_AA<0> [12], \P_AA<0> [11], \P_AA<0> [10], \P_AA<0> [9], \P_AA<0> [8], \P_AA<0> [7], \P_AA<0> [6], \P_AA<0> [5], \P_AA<0> [4], 
\P_AA<0> [3], \P_AA<0> [2], \P_AA<0> [1], \P_AA<0> [0]}),
    .S_AXIS_B_TDATA({\P_AA<1> [31], \P_AA<1> [30], \P_AA<1> [29], \P_AA<1> [28], \P_AA<1> [27], \P_AA<1> [26], \P_AA<1> [25], \P_AA<1> [24], 
\P_AA<1> [23], \P_AA<1> [22], \P_AA<1> [21], \P_AA<1> [20], \P_AA<1> [19], \P_AA<1> [18], \P_AA<1> [17], \P_AA<1> [16], \P_AA<1> [15], \P_AA<1> [14], 
\P_AA<1> [13], \P_AA<1> [12], \P_AA<1> [11], \P_AA<1> [10], \P_AA<1> [9], \P_AA<1> [8], \P_AA<1> [7], \P_AA<1> [6], \P_AA<1> [5], \P_AA<1> [4], 
\P_AA<1> [3], \P_AA<1> [2], \P_AA<1> [1], \P_AA<1> [0]}),
    .M_AXIS_RESULT_TDATA({\SUM_AA<0> [31], \SUM_AA<0> [30], \SUM_AA<0> [29], \SUM_AA<0> [28], \SUM_AA<0> [27], \SUM_AA<0> [26], \SUM_AA<0> [25], 
\SUM_AA<0> [24], \SUM_AA<0> [23], \SUM_AA<0> [22], \SUM_AA<0> [21], \SUM_AA<0> [20], \SUM_AA<0> [19], \SUM_AA<0> [18], \SUM_AA<0> [17], 
\SUM_AA<0> [16], \SUM_AA<0> [15], \SUM_AA<0> [14], \SUM_AA<0> [13], \SUM_AA<0> [12], \SUM_AA<0> [11], \SUM_AA<0> [10], \SUM_AA<0> [9], \SUM_AA<0> [8]
, \SUM_AA<0> [7], \SUM_AA<0> [6], \SUM_AA<0> [5], \SUM_AA<0> [4], \SUM_AA<0> [3], \SUM_AA<0> [2], \SUM_AA<0> [1], \SUM_AA<0> [0]})
  );
  FP_Adder   \DOT_CHAIN.DOT_ADD_CHAIN[3].ADDJ  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(SUM_AB_VALID[1]),
    .S_AXIS_B_TVALID(P_AB_VALID[3]),
    .M_AXIS_RESULT_TREADY(\NLW_DOT_CHAIN.DOT_ADD_CHAIN[3].ADDJ_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_DOT_CHAIN.DOT_ADD_CHAIN[3].ADDJ_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_DOT_CHAIN.DOT_ADD_CHAIN[3].ADDJ_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(SUM_AB_VALID[2]),
    .S_AXIS_A_TDATA({\SUM_AB<1> [31], \SUM_AB<1> [30], \SUM_AB<1> [29], \SUM_AB<1> [28], \SUM_AB<1> [27], \SUM_AB<1> [26], \SUM_AB<1> [25], 
\SUM_AB<1> [24], \SUM_AB<1> [23], \SUM_AB<1> [22], \SUM_AB<1> [21], \SUM_AB<1> [20], \SUM_AB<1> [19], \SUM_AB<1> [18], \SUM_AB<1> [17], 
\SUM_AB<1> [16], \SUM_AB<1> [15], \SUM_AB<1> [14], \SUM_AB<1> [13], \SUM_AB<1> [12], \SUM_AB<1> [11], \SUM_AB<1> [10], \SUM_AB<1> [9], \SUM_AB<1> [8]
, \SUM_AB<1> [7], \SUM_AB<1> [6], \SUM_AB<1> [5], \SUM_AB<1> [4], \SUM_AB<1> [3], \SUM_AB<1> [2], \SUM_AB<1> [1], \SUM_AB<1> [0]}),
    .S_AXIS_B_TDATA({\P_AB<3> [31], \P_AB<3> [30], \P_AB<3> [29], \P_AB<3> [28], \P_AB<3> [27], \P_AB<3> [26], \P_AB<3> [25], \P_AB<3> [24], 
\P_AB<3> [23], \P_AB<3> [22], \P_AB<3> [21], \P_AB<3> [20], \P_AB<3> [19], \P_AB<3> [18], \P_AB<3> [17], \P_AB<3> [16], \P_AB<3> [15], \P_AB<3> [14], 
\P_AB<3> [13], \P_AB<3> [12], \P_AB<3> [11], \P_AB<3> [10], \P_AB<3> [9], \P_AB<3> [8], \P_AB<3> [7], \P_AB<3> [6], \P_AB<3> [5], \P_AB<3> [4], 
\P_AB<3> [3], \P_AB<3> [2], \P_AB<3> [1], \P_AB<3> [0]}),
    .M_AXIS_RESULT_TDATA({\SUM_AB<2> [31], \SUM_AB<2> [30], \SUM_AB<2> [29], \SUM_AB<2> [28], \SUM_AB<2> [27], \SUM_AB<2> [26], \SUM_AB<2> [25], 
\SUM_AB<2> [24], \SUM_AB<2> [23], \SUM_AB<2> [22], \SUM_AB<2> [21], \SUM_AB<2> [20], \SUM_AB<2> [19], \SUM_AB<2> [18], \SUM_AB<2> [17], 
\SUM_AB<2> [16], \SUM_AB<2> [15], \SUM_AB<2> [14], \SUM_AB<2> [13], \SUM_AB<2> [12], \SUM_AB<2> [11], \SUM_AB<2> [10], \SUM_AB<2> [9], \SUM_AB<2> [8]
, \SUM_AB<2> [7], \SUM_AB<2> [6], \SUM_AB<2> [5], \SUM_AB<2> [4], \SUM_AB<2> [3], \SUM_AB<2> [2], \SUM_AB<2> [1], \SUM_AB<2> [0]})
  );
  FP_Adder   \DOT_CHAIN.DOT_ADD_CHAIN[2].ADDJ  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(SUM_AB_VALID[0]),
    .S_AXIS_B_TVALID(P_AB_VALID[2]),
    .M_AXIS_RESULT_TREADY(\NLW_DOT_CHAIN.DOT_ADD_CHAIN[2].ADDJ_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_DOT_CHAIN.DOT_ADD_CHAIN[2].ADDJ_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_DOT_CHAIN.DOT_ADD_CHAIN[2].ADDJ_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(SUM_AB_VALID[1]),
    .S_AXIS_A_TDATA({\SUM_AB<0> [31], \SUM_AB<0> [30], \SUM_AB<0> [29], \SUM_AB<0> [28], \SUM_AB<0> [27], \SUM_AB<0> [26], \SUM_AB<0> [25], 
\SUM_AB<0> [24], \SUM_AB<0> [23], \SUM_AB<0> [22], \SUM_AB<0> [21], \SUM_AB<0> [20], \SUM_AB<0> [19], \SUM_AB<0> [18], \SUM_AB<0> [17], 
\SUM_AB<0> [16], \SUM_AB<0> [15], \SUM_AB<0> [14], \SUM_AB<0> [13], \SUM_AB<0> [12], \SUM_AB<0> [11], \SUM_AB<0> [10], \SUM_AB<0> [9], \SUM_AB<0> [8]
, \SUM_AB<0> [7], \SUM_AB<0> [6], \SUM_AB<0> [5], \SUM_AB<0> [4], \SUM_AB<0> [3], \SUM_AB<0> [2], \SUM_AB<0> [1], \SUM_AB<0> [0]}),
    .S_AXIS_B_TDATA({\P_AB<2> [31], \P_AB<2> [30], \P_AB<2> [29], \P_AB<2> [28], \P_AB<2> [27], \P_AB<2> [26], \P_AB<2> [25], \P_AB<2> [24], 
\P_AB<2> [23], \P_AB<2> [22], \P_AB<2> [21], \P_AB<2> [20], \P_AB<2> [19], \P_AB<2> [18], \P_AB<2> [17], \P_AB<2> [16], \P_AB<2> [15], \P_AB<2> [14], 
\P_AB<2> [13], \P_AB<2> [12], \P_AB<2> [11], \P_AB<2> [10], \P_AB<2> [9], \P_AB<2> [8], \P_AB<2> [7], \P_AB<2> [6], \P_AB<2> [5], \P_AB<2> [4], 
\P_AB<2> [3], \P_AB<2> [2], \P_AB<2> [1], \P_AB<2> [0]}),
    .M_AXIS_RESULT_TDATA({\SUM_AB<1> [31], \SUM_AB<1> [30], \SUM_AB<1> [29], \SUM_AB<1> [28], \SUM_AB<1> [27], \SUM_AB<1> [26], \SUM_AB<1> [25], 
\SUM_AB<1> [24], \SUM_AB<1> [23], \SUM_AB<1> [22], \SUM_AB<1> [21], \SUM_AB<1> [20], \SUM_AB<1> [19], \SUM_AB<1> [18], \SUM_AB<1> [17], 
\SUM_AB<1> [16], \SUM_AB<1> [15], \SUM_AB<1> [14], \SUM_AB<1> [13], \SUM_AB<1> [12], \SUM_AB<1> [11], \SUM_AB<1> [10], \SUM_AB<1> [9], \SUM_AB<1> [8]
, \SUM_AB<1> [7], \SUM_AB<1> [6], \SUM_AB<1> [5], \SUM_AB<1> [4], \SUM_AB<1> [3], \SUM_AB<1> [2], \SUM_AB<1> [1], \SUM_AB<1> [0]})
  );
  FP_Adder   \DOT_CHAIN.ADD0  (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(P_AB_VALID[0]),
    .S_AXIS_B_TVALID(P_AB_VALID[1]),
    .M_AXIS_RESULT_TREADY(\NLW_DOT_CHAIN.ADD0_M_AXIS_RESULT_TREADY_UNCONNECTED ),
    .S_AXIS_A_TREADY(\NLW_DOT_CHAIN.ADD0_S_AXIS_A_TREADY_UNCONNECTED ),
    .S_AXIS_B_TREADY(\NLW_DOT_CHAIN.ADD0_S_AXIS_B_TREADY_UNCONNECTED ),
    .M_AXIS_RESULT_TVALID(SUM_AB_VALID[0]),
    .S_AXIS_A_TDATA({\P_AB<0> [31], \P_AB<0> [30], \P_AB<0> [29], \P_AB<0> [28], \P_AB<0> [27], \P_AB<0> [26], \P_AB<0> [25], \P_AB<0> [24], 
\P_AB<0> [23], \P_AB<0> [22], \P_AB<0> [21], \P_AB<0> [20], \P_AB<0> [19], \P_AB<0> [18], \P_AB<0> [17], \P_AB<0> [16], \P_AB<0> [15], \P_AB<0> [14], 
\P_AB<0> [13], \P_AB<0> [12], \P_AB<0> [11], \P_AB<0> [10], \P_AB<0> [9], \P_AB<0> [8], \P_AB<0> [7], \P_AB<0> [6], \P_AB<0> [5], \P_AB<0> [4], 
\P_AB<0> [3], \P_AB<0> [2], \P_AB<0> [1], \P_AB<0> [0]}),
    .S_AXIS_B_TDATA({\P_AB<1> [31], \P_AB<1> [30], \P_AB<1> [29], \P_AB<1> [28], \P_AB<1> [27], \P_AB<1> [26], \P_AB<1> [25], \P_AB<1> [24], 
\P_AB<1> [23], \P_AB<1> [22], \P_AB<1> [21], \P_AB<1> [20], \P_AB<1> [19], \P_AB<1> [18], \P_AB<1> [17], \P_AB<1> [16], \P_AB<1> [15], \P_AB<1> [14], 
\P_AB<1> [13], \P_AB<1> [12], \P_AB<1> [11], \P_AB<1> [10], \P_AB<1> [9], \P_AB<1> [8], \P_AB<1> [7], \P_AB<1> [6], \P_AB<1> [5], \P_AB<1> [4], 
\P_AB<1> [3], \P_AB<1> [2], \P_AB<1> [1], \P_AB<1> [0]}),
    .M_AXIS_RESULT_TDATA({\SUM_AB<0> [31], \SUM_AB<0> [30], \SUM_AB<0> [29], \SUM_AB<0> [28], \SUM_AB<0> [27], \SUM_AB<0> [26], \SUM_AB<0> [25], 
\SUM_AB<0> [24], \SUM_AB<0> [23], \SUM_AB<0> [22], \SUM_AB<0> [21], \SUM_AB<0> [20], \SUM_AB<0> [19], \SUM_AB<0> [18], \SUM_AB<0> [17], 
\SUM_AB<0> [16], \SUM_AB<0> [15], \SUM_AB<0> [14], \SUM_AB<0> [13], \SUM_AB<0> [12], \SUM_AB<0> [11], \SUM_AB<0> [10], \SUM_AB<0> [9], \SUM_AB<0> [8]
, \SUM_AB<0> [7], \SUM_AB<0> [6], \SUM_AB<0> [5], \SUM_AB<0> [4], \SUM_AB<0> [3], \SUM_AB<0> [2], \SUM_AB<0> [1], \SUM_AB<0> [0]})
  );
  FP_Sqrt   SQRTB (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(SUM_BB_VALID[2]),
    .M_AXIS_RESULT_TREADY(NLW_SQRTB_M_AXIS_RESULT_TREADY_UNCONNECTED),
    .S_AXIS_A_TREADY(NLW_SQRTB_S_AXIS_A_TREADY_UNCONNECTED),
    .M_AXIS_RESULT_TVALID(NORMB_VALID),
    .S_AXIS_A_TDATA({\SUM_BB<2> [31], \SUM_BB<2> [30], \SUM_BB<2> [29], \SUM_BB<2> [28], \SUM_BB<2> [27], \SUM_BB<2> [26], \SUM_BB<2> [25], 
\SUM_BB<2> [24], \SUM_BB<2> [23], \SUM_BB<2> [22], \SUM_BB<2> [21], \SUM_BB<2> [20], \SUM_BB<2> [19], \SUM_BB<2> [18], \SUM_BB<2> [17], 
\SUM_BB<2> [16], \SUM_BB<2> [15], \SUM_BB<2> [14], \SUM_BB<2> [13], \SUM_BB<2> [12], \SUM_BB<2> [11], \SUM_BB<2> [10], \SUM_BB<2> [9], \SUM_BB<2> [8]
, \SUM_BB<2> [7], \SUM_BB<2> [6], \SUM_BB<2> [5], \SUM_BB<2> [4], \SUM_BB<2> [3], \SUM_BB<2> [2], \SUM_BB<2> [1], \SUM_BB<2> [0]}),
    .M_AXIS_RESULT_TDATA({NORMB[31], NORMB[30], NORMB[29], NORMB[28], NORMB[27], NORMB[26], NORMB[25], NORMB[24], NORMB[23], NORMB[22], NORMB[21], 
NORMB[20], NORMB[19], NORMB[18], NORMB[17], NORMB[16], NORMB[15], NORMB[14], NORMB[13], NORMB[12], NORMB[11], NORMB[10], NORMB[9], NORMB[8], NORMB[7]
, NORMB[6], NORMB[5], NORMB[4], NORMB[3], NORMB[2], NORMB[1], NORMB[0]})
  );
  FP_Sqrt   SQRTA (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(SUM_AA_VALID[2]),
    .M_AXIS_RESULT_TREADY(NLW_SQRTA_M_AXIS_RESULT_TREADY_UNCONNECTED),
    .S_AXIS_A_TREADY(NLW_SQRTA_S_AXIS_A_TREADY_UNCONNECTED),
    .M_AXIS_RESULT_TVALID(NORMA_VALID),
    .S_AXIS_A_TDATA({\SUM_AA<2> [31], \SUM_AA<2> [30], \SUM_AA<2> [29], \SUM_AA<2> [28], \SUM_AA<2> [27], \SUM_AA<2> [26], \SUM_AA<2> [25], 
\SUM_AA<2> [24], \SUM_AA<2> [23], \SUM_AA<2> [22], \SUM_AA<2> [21], \SUM_AA<2> [20], \SUM_AA<2> [19], \SUM_AA<2> [18], \SUM_AA<2> [17], 
\SUM_AA<2> [16], \SUM_AA<2> [15], \SUM_AA<2> [14], \SUM_AA<2> [13], \SUM_AA<2> [12], \SUM_AA<2> [11], \SUM_AA<2> [10], \SUM_AA<2> [9], \SUM_AA<2> [8]
, \SUM_AA<2> [7], \SUM_AA<2> [6], \SUM_AA<2> [5], \SUM_AA<2> [4], \SUM_AA<2> [3], \SUM_AA<2> [2], \SUM_AA<2> [1], \SUM_AA<2> [0]}),
    .M_AXIS_RESULT_TDATA({NORMA[31], NORMA[30], NORMA[29], NORMA[28], NORMA[27], NORMA[26], NORMA[25], NORMA[24], NORMA[23], NORMA[22], NORMA[21], 
NORMA[20], NORMA[19], NORMA[18], NORMA[17], NORMA[16], NORMA[15], NORMA[14], NORMA[13], NORMA[12], NORMA[11], NORMA[10], NORMA[9], NORMA[8], NORMA[7]
, NORMA[6], NORMA[5], NORMA[4], NORMA[3], NORMA[2], NORMA[1], NORMA[0]})
  );
  FP_Divider   DIV_COS (
    .ACLK(CLK_BUFGP_264),
    .ARESETN(RST_INV_25_O),
    .S_AXIS_A_TVALID(START_DIV),
    .S_AXIS_B_TVALID(START_DIV),
    .M_AXIS_RESULT_TREADY(NLW_DIV_COS_M_AXIS_RESULT_TREADY_UNCONNECTED),
    .S_AXIS_A_TREADY(NLW_DIV_COS_S_AXIS_A_TREADY_UNCONNECTED),
    .S_AXIS_B_TREADY(NLW_DIV_COS_S_AXIS_B_TREADY_UNCONNECTED),
    .M_AXIS_RESULT_TVALID(COS_VALID_OBUF_1090),
    .S_AXIS_A_TDATA({\SUM_AB<2> [31], \SUM_AB<2> [30], \SUM_AB<2> [29], \SUM_AB<2> [28], \SUM_AB<2> [27], \SUM_AB<2> [26], \SUM_AB<2> [25], 
\SUM_AB<2> [24], \SUM_AB<2> [23], \SUM_AB<2> [22], \SUM_AB<2> [21], \SUM_AB<2> [20], \SUM_AB<2> [19], \SUM_AB<2> [18], \SUM_AB<2> [17], 
\SUM_AB<2> [16], \SUM_AB<2> [15], \SUM_AB<2> [14], \SUM_AB<2> [13], \SUM_AB<2> [12], \SUM_AB<2> [11], \SUM_AB<2> [10], \SUM_AB<2> [9], \SUM_AB<2> [8]
, \SUM_AB<2> [7], \SUM_AB<2> [6], \SUM_AB<2> [5], \SUM_AB<2> [4], \SUM_AB<2> [3], \SUM_AB<2> [2], \SUM_AB<2> [1], \SUM_AB<2> [0]}),
    .S_AXIS_B_TDATA({NORM_PROD[31], NORM_PROD[30], NORM_PROD[29], NORM_PROD[28], NORM_PROD[27], NORM_PROD[26], NORM_PROD[25], NORM_PROD[24], 
NORM_PROD[23], NORM_PROD[22], NORM_PROD[21], NORM_PROD[20], NORM_PROD[19], NORM_PROD[18], NORM_PROD[17], NORM_PROD[16], NORM_PROD[15], NORM_PROD[14], 
NORM_PROD[13], NORM_PROD[12], NORM_PROD[11], NORM_PROD[10], NORM_PROD[9], NORM_PROD[8], NORM_PROD[7], NORM_PROD[6], NORM_PROD[5], NORM_PROD[4], 
NORM_PROD[3], NORM_PROD[2], NORM_PROD[1], NORM_PROD[0]}),
    .M_AXIS_RESULT_TDATA({COS_THETA_31_OBUF_1058, COS_THETA_30_OBUF_1059, COS_THETA_29_OBUF_1060, COS_THETA_28_OBUF_1061, COS_THETA_27_OBUF_1062, 
COS_THETA_26_OBUF_1063, COS_THETA_25_OBUF_1064, COS_THETA_24_OBUF_1065, COS_THETA_23_OBUF_1066, COS_THETA_22_OBUF_1067, COS_THETA_21_OBUF_1068, 
COS_THETA_20_OBUF_1069, COS_THETA_19_OBUF_1070, COS_THETA_18_OBUF_1071, COS_THETA_17_OBUF_1072, COS_THETA_16_OBUF_1073, COS_THETA_15_OBUF_1074, 
COS_THETA_14_OBUF_1075, COS_THETA_13_OBUF_1076, COS_THETA_12_OBUF_1077, COS_THETA_11_OBUF_1078, COS_THETA_10_OBUF_1079, COS_THETA_9_OBUF_1080, 
COS_THETA_8_OBUF_1081, COS_THETA_7_OBUF_1082, COS_THETA_6_OBUF_1083, COS_THETA_5_OBUF_1084, COS_THETA_4_OBUF_1085, COS_THETA_3_OBUF_1086, 
COS_THETA_2_OBUF_1087, COS_THETA_1_OBUF_1088, COS_THETA_0_OBUF_1089})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
