//Example 8.16, Page Number 489
//Capacitive Termination
//Scilab 6.0.1
//Windows 10
clc;

//Inputs
Z0=50                               //Characteristic impedance of the line in ohms(Ω)
Cl=2*(10^-12)                //Capacitive load in farads(F)
//Outputs
//The output rises to its final value with time constant:
tou=Z0*Cl               //Time constant in seconds(secs)
t_charge=0.69*Z0*Cl   //Time to charge the capacitance in seconds(secs)

//Results
mprintf("\nTime constant Γ: %.13f seconds",tou);
mprintf("\nTime to charge the capacitance: %.13f seconds",t_charge);

//Outputs
//Time constant tou: 0.0000000001000 seconds (or) 100.0 psecs
//Time to charge the capacitance: 0.0000000000690 seconds (or) 69.0 psecs
