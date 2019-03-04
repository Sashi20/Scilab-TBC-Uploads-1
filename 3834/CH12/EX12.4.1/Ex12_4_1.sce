//Fibre Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.4.1
clc;
clear all;
//given

//case 1 
Pin=300E-6;//light input power in W
Pout=60E-3;//output power in W

Gain=Pout/Pin;
x=log10(Gain);
Gdb=10*x;

mprintf("Gain of erbium-doped fibre for case 1 = %.2f dB",Gdb);

//case 2
Pase=30E-6;//ASE power in W

Gdb2=10*log10(Gain-(Pase/Pin));
mprintf("\nGain of erbium-doped fibre for case 2 = %.2f dB",Gdb);
