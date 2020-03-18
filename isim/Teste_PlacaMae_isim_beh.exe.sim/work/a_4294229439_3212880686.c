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
static const char *ng0 = "C:/Users/35196/Desktop/Proj1AC/Mux_PC.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_4294229439_3212880686_p_0(char *t0)
{
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
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned char t29;
    unsigned char t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    unsigned char t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned char t39;
    unsigned char t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned char t44;
    unsigned char t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned char t50;
    unsigned char t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned char t56;
    unsigned char t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned char t62;
    unsigned char t63;
    unsigned char t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;

LAB0:    xsi_set_current_line(16, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4728);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB9:    t5 = (t0 + 4731);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB10:    t8 = (t0 + 4734);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB11:    t11 = (t0 + 4737);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB12:    t14 = (t0 + 4740);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(17, ng0);
    t17 = (t0 + 3072);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB4:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 3072);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t22 = *((unsigned char *)t2);
    t1 = (t0 + 3072);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = t22;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = (7 - 7);
    t23 = (t4 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t22 = *((unsigned char *)t1);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t22;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB7:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = (7 - 7);
    t23 = (t4 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t22 = *((unsigned char *)t1);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t7 = (6 - 7);
    t26 = (t7 * -1);
    t27 = (1U * t26);
    t28 = (0 + t27);
    t3 = (t5 + t28);
    t29 = *((unsigned char *)t3);
    t30 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t22, t29);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t10 = (5 - 7);
    t31 = (t10 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t6 = (t8 + t33);
    t34 = *((unsigned char *)t6);
    t35 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t30, t34);
    t9 = (t0 + 1192U);
    t11 = *((char **)t9);
    t13 = (4 - 7);
    t36 = (t13 * -1);
    t37 = (1U * t36);
    t38 = (0 + t37);
    t9 = (t11 + t38);
    t39 = *((unsigned char *)t9);
    t40 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t35, t39);
    t12 = (t0 + 1192U);
    t14 = *((char **)t12);
    t16 = (3 - 7);
    t41 = (t16 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t12 = (t14 + t43);
    t44 = *((unsigned char *)t12);
    t45 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t40, t44);
    t15 = (t0 + 1192U);
    t17 = *((char **)t15);
    t46 = (2 - 7);
    t47 = (t46 * -1);
    t48 = (1U * t47);
    t49 = (0 + t48);
    t15 = (t17 + t49);
    t50 = *((unsigned char *)t15);
    t51 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t45, t50);
    t18 = (t0 + 1192U);
    t19 = *((char **)t18);
    t52 = (1 - 7);
    t53 = (t52 * -1);
    t54 = (1U * t53);
    t55 = (0 + t54);
    t18 = (t19 + t55);
    t56 = *((unsigned char *)t18);
    t57 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t51, t56);
    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t58 = (0 - 7);
    t59 = (t58 * -1);
    t60 = (1U * t59);
    t61 = (0 + t60);
    t20 = (t21 + t61);
    t62 = *((unsigned char *)t20);
    t63 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t57, t62);
    t64 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t63);
    t65 = (t0 + 3072);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    *((unsigned char *)t69) = t64;
    xsi_driver_first_trans_fast_port(t65);
    goto LAB2;

LAB14:;
}


extern void work_a_4294229439_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4294229439_3212880686_p_0};
	xsi_register_didat("work_a_4294229439_3212880686", "isim/Teste_PlacaMae_isim_beh.exe.sim/work/a_4294229439_3212880686.didat");
	xsi_register_executes(pe);
}
