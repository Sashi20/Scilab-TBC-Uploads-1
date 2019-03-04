//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 4.6.1
//windows 8
//Scilab version-6.0.0
clc;
clear all;
//given

lambda=850;// wavelength in nm
L=100E12;//Length of fiber in nm
deltalambda=70;//spectral width wavelength in nm
S0=0.097;//zero dispersion slope in ps/nm^2.km
lambda0=1343;//assumed zero dispersion wavelength in nm

y=lambda0/lambda;
x=1-(y*y*y*y);

Dlambda=-(S0*x*lambda)/4;

deltatgmat=(Dlambda*deltalambda)/1000;

mprintf("Pulse spreading by material dispersion = %.2f ns/km",deltatgmat);

deltatmat=deltatgmat*100;

mprintf("\nPulse spreading over entire fiber = %.2f s",deltatmat);
