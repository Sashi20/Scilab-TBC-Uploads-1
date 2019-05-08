//Example 3.5, Page Number 130
//Keq for a 5V CMOS Inverter
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
m=0.5       //Grading co-efficient is equal to (1/2) for abrupt junction and (1/3) for linear graded junction
phi_o=0.6               //Built in potential in volts(V)
Vcc=5         //Supply in volts(V)
V_high_NMOS_HL=-5   //High level transition voltage for NMOS during high to low transition in volts(V)
V_low_NMOS_HL=-2.5   //Low level transition voltage for NMOS during high to low transition in volts(V)
V_high_PMOS_HL=-2.5   //High level transition voltage for NMOS during high to low transition in volts(V)
V_low_PMOS_HL=0   //Low level transition voltage for NMOS during high to low transition in volts(V)

V_high_NMOS_LH=0   //High level transition voltage for NMOS during low to high  transition in volts(V)
V_low_NMOS_LH=-2.5   //Low level transition voltage for NMOS during low to high transition in volts(V)
V_high_PMOS_LH=-5   //High level transition voltage for NMOS during low to high transition in volts(V)
V_low_PMOS_LH=-2.5   //Low level transition voltage for NMOS during low to high transition in volts(V)

//Outputs
Keq_NMOS_HL=-(phi_o^m)*[((phi_o-V_high_NMOS_HL)^(1-m))-((phi_o-V_low_NMOS_HL)^(1-m))]/((V_high_NMOS_HL-V_low_NMOS_HL)*(1-m))        //Device parameter for NMOS
Keq_PMOS_HL=-(phi_o^m)*[((phi_o-V_high_PMOS_HL)^(1-m))-((phi_o-V_low_PMOS_HL)^(1-m))]/((V_high_PMOS_HL-V_low_PMOS_HL)*(1-m))        //Device parameter for PMOS

Keq_NMOS_LH=-(phi_o^m)*[((phi_o-V_high_NMOS_LH)^(1-m))-((phi_o-V_low_NMOS_LH)^(1-m))]/((V_high_NMOS_LH-V_low_NMOS_LH)*(1-m))        //Device parameter for NMOS
Keq_PMOS_LH=-(phi_o^m)*[((phi_o-V_high_PMOS_LH)^(1-m))-((phi_o-V_low_PMOS_LH)^(1-m))]/((V_high_PMOS_LH-V_low_PMOS_LH)*(1-m))        //Device parameter for PMOS


//Results
mprintf("\nKeq_be_NMOS_HL: %.20f",Keq_NMOS_HL);
mprintf("\nKeq_be_PMOS_HL: %.20f",Keq_PMOS_HL);
mprintf("\nKeq_be_NMOS_LH: %.20f",Keq_NMOS_LH);
mprintf("\nKeq_be_PMOS_LH: %.20f",Keq_PMOS_LH);

//Outputs
//Keq_be_NMOS_HL: 0.37536968662700032000
//Keq_be_PMOS_HL: 0.61105453575886848000
//Keq_be_NMOS_LH: 0.61105453575886848000
//Keq_be_PMOS_LH: 0.37536968662700032000
