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
static const char *ng0 = "C:/Users/35196/Desktop/Proj1AC/ALU.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_0774719531_sub_1742983514_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_2698860368_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5099);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB10:    t5 = (t0 + 5102);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB11:    t8 = (t0 + 5105);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB12:    t11 = (t0 + 5108);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB13:    t14 = (t0 + 5111);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB14:    t17 = (t0 + 5114);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB15:
LAB9:    xsi_set_current_line(39, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)1, 5U);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(39, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)1, 8U);
    t3 = (t0 + 3232);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(19, ng0);
    t21 = (t0 + 1032U);
    t22 = *((char **)t21);
    t21 = (t0 + 4992U);
    t23 = (t0 + 1192U);
    t24 = *((char **)t23);
    t23 = (t0 + 5008U);
    t25 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t20, t22, t21, t24, t23);
    t26 = (t20 + 12U);
    t27 = *((unsigned int *)t26);
    t28 = (1U * t27);
    t29 = (8U != t28);
    if (t29 == 1)
        goto LAB17;

LAB18:    t30 = (t0 + 3232);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t25, 8U);
    xsi_driver_first_trans_fast_port(t30);
    goto LAB2;

LAB4:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5008U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t20, t2, t1, t5, t3);
    t8 = (t20 + 12U);
    t27 = *((unsigned int *)t8);
    t28 = (1U * t27);
    t29 = (8U != t28);
    if (t29 == 1)
        goto LAB19;

LAB20:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5008U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t20, t2, t1, t5, t3);
    t8 = (t20 + 12U);
    t27 = *((unsigned int *)t8);
    t28 = (1U * t27);
    t29 = (8U != t28);
    if (t29 == 1)
        goto LAB21;

LAB22:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB6:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5008U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t20, t2, t1, t5, t3);
    t8 = (t20 + 12U);
    t27 = *((unsigned int *)t8);
    t28 = (1U * t27);
    t29 = (8U != t28);
    if (t29 == 1)
        goto LAB23;

LAB24:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB7:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5008U);
    t6 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t20, t2, t1, t5, t3);
    t8 = (t20 + 12U);
    t27 = *((unsigned int *)t8);
    t28 = (1U * t27);
    t29 = (8U != t28);
    if (t29 == 1)
        goto LAB25;

LAB26:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB8:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5008U);
    t29 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t29 != 0)
        goto LAB27;

LAB29:
LAB28:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5008U);
    t29 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t29 != 0)
        goto LAB30;

LAB32:
LAB31:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5008U);
    t29 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t29 != 0)
        goto LAB33;

LAB35:
LAB34:    goto LAB2;

LAB16:;
LAB17:    xsi_size_not_matching(8U, t28, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(8U, t28, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(8U, t28, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(8U, t28, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(8U, t28, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(27, ng0);
    t6 = xsi_get_transient_memory(5U);
    memset(t6, 0, 5U);
    t8 = t6;
    memset(t8, (unsigned char)2, 5U);
    t4 = (0 - 4);
    t27 = (t4 * -1);
    t28 = (1U * t27);
    t9 = (t8 + t28);
    *((unsigned char *)t9) = (unsigned char)3;
    t7 = (1 - 4);
    t35 = (t7 * -1);
    t36 = (1U * t35);
    t11 = (t8 + t36);
    *((unsigned char *)t11) = (unsigned char)3;
    t12 = (t0 + 3296);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 5U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB28;

LAB30:    xsi_set_current_line(32, ng0);
    t6 = xsi_get_transient_memory(5U);
    memset(t6, 0, 5U);
    t8 = t6;
    memset(t8, (unsigned char)2, 5U);
    t4 = (1 - 4);
    t27 = (t4 * -1);
    t28 = (1U * t27);
    t9 = (t8 + t28);
    *((unsigned char *)t9) = (unsigned char)3;
    t7 = (2 - 4);
    t35 = (t7 * -1);
    t36 = (1U * t35);
    t11 = (t8 + t36);
    *((unsigned char *)t11) = (unsigned char)3;
    t10 = (3 - 4);
    t37 = (t10 * -1);
    t38 = (1U * t37);
    t12 = (t8 + t38);
    *((unsigned char *)t12) = (unsigned char)3;
    t14 = (t0 + 3296);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t21 = *((char **)t18);
    memcpy(t21, t6, 5U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB31;

LAB33:    xsi_set_current_line(37, ng0);
    t6 = xsi_get_transient_memory(5U);
    memset(t6, 0, 5U);
    t8 = t6;
    memset(t8, (unsigned char)2, 5U);
    t4 = (4 - 4);
    t27 = (t4 * -1);
    t28 = (1U * t27);
    t9 = (t8 + t28);
    *((unsigned char *)t9) = (unsigned char)3;
    t7 = (3 - 4);
    t35 = (t7 * -1);
    t36 = (1U * t35);
    t11 = (t8 + t36);
    *((unsigned char *)t11) = (unsigned char)3;
    t12 = (t0 + 3296);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 5U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB34;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/Teste_PlacaMae_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
