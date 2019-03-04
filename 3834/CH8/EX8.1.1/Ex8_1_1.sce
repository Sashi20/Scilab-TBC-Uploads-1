//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 8.1.1
//windows 8
//Scilab version-6.0.0
clc;
clear all;
//given

//case 1
d1=65.5E-6;//diameter of the core considering 62.5+3 in m
d2=59.5E-6;//diameter of the core considering 62.5-3 in m

Pcoreloss=-10*log10((d2/d1)^2);
mprintf("Intrinsic loss due to diameter mismatch = %.2f dB",Pcoreloss);


//case 2
NA1=0.290;//numerical aperture of fiber considering 0.275+0.015
NA2=0.260;//numerical aperture of fiber considering 0.275-0.015

Pna=-10*log10((NA2/NA1)^2);
mprintf("\nIntrinsic loss due to NA mismatch = %.2f dB",Pna);
