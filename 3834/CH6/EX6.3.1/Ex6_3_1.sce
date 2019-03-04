//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 6.3.1
//windows 8
//Scilab version-6.0.0
clc;
clear all;
//given

L=100E12;//Length of the single-mode fiber link in nm

lambda0=1310;//average of zero-dispersion wavelength in nm
lambda=1550;//operating wavelength in nm
S0=0.092;//zero dispersion slope in ps/nm^2

y=lambda0/lambda;
z=1-y^4;
Dlambda=(S0/4)*lambda*z;

deltalambda=1;//light source's spectral width in nm

deltat=Dlambda*deltalambda*L;

mprintf("Pulse spread caused by chromatic dispersion = %.2f ps",deltat*1E-12);

x=6.66;//here, x= L/Ldcf assumed to be 6.66

Ddcf=-Dlambda*x;
mprintf("\nWe need DCF of %.2f ps/nm.km to compensate for dispersion in a conventional SM fibre.",Ddcf);
