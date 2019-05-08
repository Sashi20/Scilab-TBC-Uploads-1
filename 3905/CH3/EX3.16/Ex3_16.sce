//Example 3.16, Page Number 170
//Load Capacitances of an ECL Gate
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Cd3=0.2*(10^-15)         //Diffusion capacitance for high base resistance(Rb)in farads(F)
C_bc3=0.91*(10^-15)     //Base-Emitter junction capacitance in farads(F)
C_bc1=0.84*(10^-15)     //Base-collector junction capacitance in farads(F)
C_cs3=0.51*(10^-15)     //Collector-Source junction capacitance in farads(F)

//Outputs
Cc=(C_cs3*47)+(C_bc1*22)+(C_bc3*22)+Cd3    //Collector capacitance in farads(F)

//Results
mprintf("\nCollector capacitance Cc : %.16f farads",Cc);

//Output
//Collector capacitance Cc : 0.0000000000000627 farads (or) 62.7 fF
