//Example 4.7, Page Number 214
//Resistance of a Transmission Gate
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
//Parameter Values for 1.2µm CMOS process
Vdd=5               //Supply voltage in volts(V)
Kn=19.6*(10^-6)              //in ampere per volt square(A/V^2)
Kp=5.4*(10^-6)              //in ampere per volt square(A/V^2)
Vtn=0.743                  //Threshold voltage of NMOS in volts(V)
Vtp1=-0.739                  //Threshold voltage of PMOS in volts(V)
Vtp=abs(Vtp1)

//Outputs
Geq=((Kn*((Vdd-Vtn)^2))+(Kp*((Vdd-Vtp)^2)))/(2*Vdd)     //Equivalent conductance in mho
Req=1/Geq       //Equivalent resistance in ohms(Ω)

//Results
mprintf("\nEquivalent conductance Geq : %.7f mho",Geq);
mprintf("\nEquivalent resistance Req : %.4f ohms",Req);

//Output
//Equivalent conductance Geq : 0.0000453 mho (or) 45.3 pico mho
//Equivalent resistance Req : 22063.5990 ohms (or) 22.063 KΩ

//Wrong Answer.
//Answer would be correct if formula is modified as (Replacing (2*Vdd) by (Vdd)) :
//Geq=((Kn*((Vdd-Vtn)^2))+(Kp*((Vdd-Vtp)^2)))/(Vdd)

//Output when equation is modified:
//Equivalent conductance Geq : 0.0000906 mho (or)90.6 pico mho
//Equivalent resistance Req : 11031.7995 ohms(or) 11.031 KΩ
