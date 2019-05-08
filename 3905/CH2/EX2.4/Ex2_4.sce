//Example 2.4, Page Number 30
//Average Junction Capacitance 
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
V_high=0     //Diode high level voltage in volts(V)
V_low=-5     //Diode low level voltage in volts(V)
m=0.5        //Grading co-efficient is equal to (1/2) for abrupt junction and (1/3) for linear graded junction
phi_o=0.64      //Built-in potential for zero bias in volts(V)
Cjo=0.5*((10^-15)/(10^-12))  //Capacitance under zero-bias in farads per metre square(F/m^2)

//Outputs
Keq=-(phi_o^m)*[((phi_o-V_high)^(1-m))-((phi_o-V_low)^(1-m))]/((V_high-V_low)*(1-m))...//Device parameter

Ceq=Keq*Cjo    //Average junction capacitance in farads per metre square(F/m^2)

//Results
mprintf("Keq: %.4f",Keq);
mprintf("\nAverage junction capacitance at the diode Ceq: %.6f F/m^2",Ceq);

//Outputs
// Keq: 0.5040
//Average junction capacitance at the diode Ceq:0.000252 F/m^2 (or) 0.2520 fF/µm^2

