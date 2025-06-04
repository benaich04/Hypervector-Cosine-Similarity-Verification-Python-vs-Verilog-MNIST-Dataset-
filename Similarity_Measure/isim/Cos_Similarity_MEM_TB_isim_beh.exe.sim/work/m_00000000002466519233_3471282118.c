/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "T:/benmed/Similarity_Measure/Similarity_Measure/Cos_Similarity_MEM_TB.v";
static int ng1[] = {0, 0};
static int ng2[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int ng3[] = {0, 0, 0, 0, 0, 0, 0, 0};
static int ng4[] = {1, 0};
static const char *ng5 = "mem_files/test_sample_1.mem";
static const char *ng6 = "mem_files/class_0_hypervector.mem";
static const char *ng7 = "mem_files/class_1_hypervector.mem";
static const char *ng8 = "mem_files/class_2_hypervector.mem";
static const char *ng9 = "mem_files/class_3_hypervector.mem";
static const char *ng10 = "mem_files/class_4_hypervector.mem";
static const char *ng11 = "mem_files/class_5_hypervector.mem";
static const char *ng12 = "mem_files/class_6_hypervector.mem";
static const char *ng13 = "mem_files/class_7_hypervector.mem";
static const char *ng14 = "mem_files/class_8_hypervector.mem";
static const char *ng15 = "mem_files/class_9_hypervector.mem";
static int ng16[] = {32, 0};
static unsigned int ng17[] = {4294967295U, 0U, 4294967295U, 0U, 4294967295U, 0U, 15U, 0U};
static int ng18[] = {7, 0};
static int ng19[] = {2, 0};
static int ng20[] = {3, 0};
static int ng21[] = {4, 0};
static int ng22[] = {5, 0};
static int ng23[] = {6, 0};
static int ng24[] = {8, 0};
static int ng25[] = {9, 0};
static const char *ng26 = "Class %0d: Cosine Similarity (IEEE-754 Hex): %h";



static void Initial_42_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 5544U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);

LAB4:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1744);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5352);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1744);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB10;

LAB8:    if (*((unsigned int *)t7) == 0)
        goto LAB7;

LAB9:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB10:    t14 = (t4 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t4) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB12;

LAB11:    t22 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1744);
    xsi_vlogvar_assign_value(t24, t4, 0, 0, 1);
    goto LAB5;

LAB7:    *((unsigned int *)t4) = 1;
    goto LAB10;

LAB12:    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t4) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB11;

LAB13:    goto LAB1;

}

static void Initial_47_1(char *t0)
{
    char t7[8];
    char t16[8];
    char t27[8];
    char t28[8];
    char t29[8];
    char t37[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    unsigned int t40;
    int t41;
    char *t42;
    unsigned int t43;
    int t44;
    int t45;
    char *t46;
    unsigned int t47;
    int t48;
    int t49;
    unsigned int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    int t54;
    int t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;

LAB0:    t1 = (t0 + 5792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);

LAB4:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2064);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3200);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3200);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 100);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 100);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 5600);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 5600);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2704);
    xsi_vlogfile_readmemh(ng5, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2864);
    xsi_vlogfile_readmemh(ng6, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3024);
    xsi_vlogfile_readmemh(ng7, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3184);
    xsi_vlogfile_readmemh(ng8, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3344);
    xsi_vlogfile_readmemh(ng9, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3504);
    xsi_vlogfile_readmemh(ng10, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3664);
    xsi_vlogfile_readmemh(ng11, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3824);
    xsi_vlogfile_readmemh(ng12, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3984);
    xsi_vlogfile_readmemh(ng13, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4144);
    xsi_vlogfile_readmemh(ng14, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4304);
    xsi_vlogfile_readmemh(ng15, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(72, ng0);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4464);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB7:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t4, 32, t6, 32);
    t5 = (t7 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 100);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 4624);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4624);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB12:    t5 = ((char*)((ng1)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t5, 32);
    if (t41 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng4)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t41 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng19)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t41 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng20)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t41 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng21)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t41 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng22)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t41 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng23)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t41 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng18)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t41 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng24)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t41 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t41 = xsi_vlog_signed_case_compare(t4, 32, t2, 32);
    if (t41 == 1)
        goto LAB31;

LAB32:
LAB33:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2544);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 100);
    xsi_set_current_line(95, ng0);

LAB84:    t2 = (t0 + 1344U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t7, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t6);
    t40 = (t11 ^ t12);
    t43 = (t10 | t40);
    t47 = *((unsigned int *)t5);
    t50 = *((unsigned int *)t6);
    t52 = (t47 | t50);
    t53 = (~(t52));
    t57 = (t43 & t53);
    if (t57 != 0)
        goto LAB88;

LAB85:    if (t52 != 0)
        goto LAB87;

LAB86:    *((unsigned int *)t7) = 1;

LAB88:    t14 = (t7 + 4);
    t58 = *((unsigned int *)t14);
    t59 = (~(t58));
    t60 = *((unsigned int *)t7);
    t61 = (t60 & t59);
    t62 = (t61 != 0);
    if (t62 > 0)
        goto LAB90;

LAB89:    t15 = (t0 + 6112);
    *((int *)t15) = 1;
    t17 = (t0 + 5792U);
    *((char **)t17) = &&LAB84;
    goto LAB1;

LAB8:    xsi_set_current_line(73, ng0);
    t13 = (t0 + 2704);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t17 = (t0 + 2704);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2704);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 4464);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_get_array_select_value(t16, 32, t15, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t0 + 2064);
    t30 = (t0 + 2064);
    t31 = (t30 + 72U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng16)));
    t34 = (t0 + 4464);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t33, 32, t36, 32);
    t38 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t32)), 2, t37, 32, 1, t38, 32, 1, 1);
    t39 = (t27 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (!(t40));
    t42 = (t28 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t46 = (t29 + 4);
    t47 = *((unsigned int *)t46);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t4, 32, t5, 32);
    t6 = (t0 + 4464);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 32);
    goto LAB7;

LAB10:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t26, t16, t51, *((unsigned int *)t28), t55);
    goto LAB11;

LAB13:    xsi_set_current_line(80, ng0);
    xsi_set_current_line(80, ng0);
    t6 = ((char*)((ng1)));
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t6, 0, 0, 32);

LAB34:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB35;

LAB36:    goto LAB33;

LAB15:    xsi_set_current_line(81, ng0);
    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB39:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB40;

LAB41:    goto LAB33;

LAB17:    xsi_set_current_line(82, ng0);
    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB44:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB45;

LAB46:    goto LAB33;

LAB19:    xsi_set_current_line(83, ng0);
    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB49:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB50;

LAB51:    goto LAB33;

LAB21:    xsi_set_current_line(84, ng0);
    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB54:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB55;

LAB56:    goto LAB33;

LAB23:    xsi_set_current_line(85, ng0);
    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB59:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB60;

LAB61:    goto LAB33;

LAB25:    xsi_set_current_line(86, ng0);
    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB64:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB65;

LAB66:    goto LAB33;

LAB27:    xsi_set_current_line(87, ng0);
    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB69:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB70;

LAB71:    goto LAB33;

LAB29:    xsi_set_current_line(88, ng0);
    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB74:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB75;

LAB76:    goto LAB33;

LAB31:    xsi_set_current_line(89, ng0);
    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 4464);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);

LAB79:    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t13 = *((char **)t6);
    memset(t7, 0, 8);
    xsi_vlog_signed_less(t7, 32, t5, 32, t13, 32);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB80;

LAB81:    goto LAB33;

LAB35:    xsi_set_current_line(80, ng0);
    t14 = (t0 + 2864);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 2864);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 2864);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB37;

LAB38:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB34;

LAB37:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB38;

LAB40:    xsi_set_current_line(81, ng0);
    t14 = (t0 + 3024);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 3024);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 3024);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB42;

LAB43:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB39;

LAB42:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB43;

LAB45:    xsi_set_current_line(82, ng0);
    t14 = (t0 + 3184);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 3184);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 3184);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB47;

LAB48:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB44;

LAB47:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB48;

LAB50:    xsi_set_current_line(83, ng0);
    t14 = (t0 + 3344);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 3344);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 3344);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB52;

LAB53:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB49;

LAB52:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB53;

LAB55:    xsi_set_current_line(84, ng0);
    t14 = (t0 + 3504);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 3504);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 3504);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB57;

LAB58:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB54;

LAB57:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB58;

LAB60:    xsi_set_current_line(85, ng0);
    t14 = (t0 + 3664);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 3664);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 3664);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB62;

LAB63:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB59;

LAB62:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB63;

LAB65:    xsi_set_current_line(86, ng0);
    t14 = (t0 + 3824);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 3824);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 3824);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB67;

LAB68:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB64;

LAB67:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB68;

LAB70:    xsi_set_current_line(87, ng0);
    t14 = (t0 + 3984);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 3984);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 3984);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB72;

LAB73:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB69;

LAB72:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB73;

LAB75:    xsi_set_current_line(88, ng0);
    t14 = (t0 + 4144);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 4144);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 4144);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB77;

LAB78:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB74;

LAB77:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB78;

LAB80:    xsi_set_current_line(89, ng0);
    t14 = (t0 + 4304);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t0 + 4304);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 4304);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 4464);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t16, 32, t17, t20, t23, 2, 1, t26, 32, 1);
    t30 = (t0 + 2224);
    t31 = (t0 + 2224);
    t32 = (t31 + 72U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng16)));
    t35 = (t0 + 4464);
    t36 = (t35 + 56U);
    t38 = *((char **)t36);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t34, 32, t38, 32);
    t39 = ((char*)((ng16)));
    xsi_vlog_convert_indexed_partindices(t27, t28, t29, ((int*)(t33)), 2, t37, 32, 1, t39, 32, 1, 1);
    t42 = (t27 + 4);
    t40 = *((unsigned int *)t42);
    t41 = (!(t40));
    t46 = (t28 + 4);
    t43 = *((unsigned int *)t46);
    t44 = (!(t43));
    t45 = (t41 && t44);
    t56 = (t29 + 4);
    t47 = *((unsigned int *)t56);
    t48 = (!(t47));
    t49 = (t45 && t48);
    if (t49 == 1)
        goto LAB82;

LAB83:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 4464);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_signed_add(t7, 32, t5, 32, t6, 32);
    t13 = (t0 + 4464);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB79;

LAB82:    t50 = *((unsigned int *)t29);
    t51 = (t50 + 0);
    t52 = *((unsigned int *)t27);
    t53 = *((unsigned int *)t28);
    t54 = (t52 - t53);
    t55 = (t54 + 1);
    xsi_vlogvar_assign_value(t30, t16, t51, *((unsigned int *)t28), t55);
    goto LAB83;

LAB87:    t13 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB88;

LAB90:    t18 = (t0 + 6112);
    *((int *)t18) = 0;
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4624);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1184U);
    t13 = *((char **)t6);
    xsi_vlogfile_write(1, 0, 0, ng26, 3, t0, (char)119, t5, 32, (char)118, t13, 32);
    xsi_set_current_line(97, ng0);
    xsi_vlog_stop(1);
    goto LAB1;

}


extern void work_m_00000000002466519233_3471282118_init()
{
	static char *pe[] = {(void *)Initial_42_0,(void *)Initial_47_1};
	xsi_register_didat("work_m_00000000002466519233_3471282118", "isim/Cos_Similarity_MEM_TB_isim_beh.exe.sim/work/m_00000000002466519233_3471282118.didat");
	xsi_register_executes(pe);
}
