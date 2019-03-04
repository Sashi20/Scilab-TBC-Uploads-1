//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.3.4
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given

NEPnormBW1=3.3E-12;//Bandwidth normalised NEP in W/sqrt(Hz)
BW1=10E+6;//Bandwidth for case 1 in Hz

x=NEPnormBW1*sqrt(BW1);

NEPnormBW2=30E-12;//Bandwidth normalised NEP in W/sqrt(Hz)
BW2=115E+6;//Bandwidth for case 2 in Hz

y=NEPnormBW2*sqrt(BW2);

NEP=sqrt(x^2+y^2);
mprintf("Noise-Equivalent power(NEP) = %.1f nW",NEP*1E+9);

Rmax=1.1;//Maximum value of responsivity of a photodiode in A/W
Rlambda=0.9;//Responsivity of a photodiode for given wavelength 1300nm in A/W

NEPlambdaBW1=x*(Rmax/Rlambda);
mprintf("\nNoise-Equivalent power(NEP) for given wavelength lambda=1550nm = %.1f nW",NEPlambdaBW1*1E+9);

NEPlambdaBW2=y*(Rmax/Rlambda);
mprintf("\nNoise-Equivalent power(NEP) for given wavelength lambda=1550nm = %.1f nW",NEPlambdaBW1*1E+9);

