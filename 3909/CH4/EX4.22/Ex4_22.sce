clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.22
//calculation of minimum population for He-Ne laser
//given data
lambda0=6328*10^-10; //wavelength (in m)
tau_m=10^-7; //transition time of metastable state (in s)
n0=1; //refractive index of laser
l=20*10^-2; //length (in m)
R1=0.98
del_nu=10^9; //frequency (in Hz)
c=3*10^8; //speed (in m/s) of light
alpha=0; //neglecting losses
//calculation
R2=R1
tau_c=(2*l*n0)/(c*(2*alpha*l-log(R1*R2))); //characteristic time of resonator (in s)
N2_minus_N1=(4*n0^3*tau_m*del_nu)/(c*lambda0^2*tau_c); //threshold population (per m^3)
printf("\nminimum population for He-Ne laser is %1.2e per cm^3",N2_minus_N1*10^2)
//the answer provided in the textbook is wrong
