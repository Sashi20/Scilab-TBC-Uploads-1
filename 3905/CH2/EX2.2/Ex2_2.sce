//Example 2.2, Page Number 27
//Analysis of Diode Network 
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vs=3                   //Source voltage in volts(V)
Rs=10*(10^3)           //Series resistance in ohms(Ω)
Is=0.5 *(10^-16)       //Saturation current of the diode in amperes(A)
phi_t=26*(10^-3)               //Thermal voltage in volts(V)

//Using ideal diode equation and solving the non linear equation using either numerical or iterative techniques 
Id=0.224 *(10^-3)      //Diode current in amperes(A)

//Outputs
Vd=Vs-Rs*Id            //Voltage across the diode in volts(V)

//Results
mprintf("Voltage across diode Vd: %.2f V",Vd);

//Output
// Voltage across diode Vd: 0.76 V
