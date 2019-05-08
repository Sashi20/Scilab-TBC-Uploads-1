//Example 4.12, Page Number 229
//Charge Redistribution
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Vdd=-5                     //Supply voltage in volts(V)
//When top three transistors of the PDN are enabled and the internal capacitance hold diffusion and gate capacitance of neighbouring transistors.
C_internal=8.78*(10^-15)           //Internal capacitane in farads(F)
Cl=25*(10^-15)           //Load capacitane in farads(F)

//Outputs
delta_V=-Vdd*(C_internal/(C_internal+Cl))              //Total output voltage drop in volts(V)

//Results
mprintf("\nTotal output voltage drop delta_V: %.2f volts",delta_V);

//Outputs 
//Total output voltage drop delta_V: 1.30 volts


