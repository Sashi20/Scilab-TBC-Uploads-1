clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.12
//calculation of ratio of stimulated emission to spontaneous emission
//given data
lambda=632.8*10^-9; //wavelength (in m) of He-Ne laser
c=3*10^8; //speed (in m/s) of light
h=6.63*10^-34; //Planck's constant (in Js)
r=(1*10^-3)/2; //beam radius (in m) of laser
d_nu=1.5*10^8; //line width of laser line (in Hz)
E=99*10^-3; //energy (in W) within resonator
//calculation
nu=c/lambda; //frequency (in Hz) of laser
B21_by_A21=(c^3)/(8*%pi*h*nu^3); //ratio of Einstein's coefficients (in m^3/J.s)
I=E/(%pi*r^2); //intensity 
rho_v=I/(c*d_nu); //density (in J.s/m^3)
rho_vB21_by_A21=(B21_by_A21)*rho_v; //ratio of stimulated emission to spontaneous emission
printf("\nratio of stimulated emission to spontaneous emission is %2.1f",rho_vB21_by_A21)

