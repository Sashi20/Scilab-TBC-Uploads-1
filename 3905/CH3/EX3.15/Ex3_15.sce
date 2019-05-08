//Example 3.15, Page Number 169
//Switching the Differential Pair
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
rc=75       //Transient collector resistance in ohms(Ω)
rb=120       //Transient base resistance in ohms(Ω)
re=20       //Transient emitter resistance in ohms(Ω)
Rc=1*(10^3)  //Collector resistance in ohms(Ω)
C_be1=20*(10^-15)     //Base-Emitter junction capacitance in farads(F)
C_bc1=22*(10^-15)     //Base-collector junction capacitance in farads(F)
C_cs1=47*(10^-15)     //Collector-Source junction capacitance in farads(F)
Iee=0.5*(10^-3)     //Coupled emmiter current in amperes(A)
tou_f=10*(10^-12)     //Ideal forward transit time in secs
Keq_be=3.35
Keq_bc=0.75
alpha=5                 //Empirical factor 
//Empirical factor(α) is 2 and 5 for the 50% and 90% points respectively

//Outputs
Cd1=(tou_f/Rc)         //Diffusion capacitance in farads(F)
Cin_j=(Keq_bc*C_bc1)+((Keq_be*C_be1)/2)        //Equivalent input capacitance
tdp=rb*((2.2*Cin_j)+(alpha*Cd1))            //Propogation delay for collector current to reach 90% of their value in seconds(secs)

//Results
mprintf("\nDiffusion capacitance at base during single transition Cd1 : %.16f farads",Cd1);
mprintf("\nEquivalent input capacitance Cin_j : %.16f farads",Cin_j);
mprintf("\nPropogation delay for collector current to reach ninty percent point tdp : %.13f seconds",tdp);

//Outputs
//Diffusion capacitance at base during single transition Cd1 : 0.0000000000000100 farads (or) 10.0fF
//Equivalent input capacitance Cin_j : 0.0000000000000500 farads (or) 50.0fF
//Propogation delay for collector current to reach ninty percent point tdp : 0.0000000000192 seconds (or) 19.2 picosecs
