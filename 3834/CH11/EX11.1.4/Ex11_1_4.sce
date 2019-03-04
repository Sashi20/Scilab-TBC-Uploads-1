//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.1.4
//windows 7
//Scilab version-6.0.0
clc;
clear all;
//given

Vsat=1E+5; //ssaturation voltage in volts

//case 1
w1=40E-6;//width of the depletion region of an Si photodiode
tautr1=w1/Vsat;
BWsi=1/(2*%pi*tautr1);
mprintf("Bandwidth of Si photodiode = %.3f Gbit/s",BWsi*1E-9);

//case 2
w2=4E-6;//width of the depletion region of an InGaAs photodiode
tautr2=w2/Vsat;
BWInGaAs=1/(2*%pi*tautr2);
mprintf("\nBandwidth of InGaAs photodiode = %.2f Gbit/s",BWInGaAs*1E-9);
