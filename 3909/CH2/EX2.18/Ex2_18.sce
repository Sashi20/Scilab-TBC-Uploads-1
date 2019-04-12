clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.18
//calculation of maximum thickness of the plate to (i)to experience only rotation of polarization plane (ii)to acquire circular polarization after passing through the plate
//given data
lambda=5890*10^-10; //wavelength (in m)
mu_e_minus_mu_o=0.009; //difference of refractive indices of quartz
n=1
t=5*10^-4; //thickness (in m)
//calculation
twice_n_plus_1=round((t*2*mu_e_minus_mu_o)/lambda)
I_max=(twice_n_plus_1*lambda)/(2*mu_e_minus_mu_o)
twice_n_plus_one=(t*4*mu_e_minus_mu_o)/lambda
I_max_dash=(twice_n_plus_one*lambda)/(4*mu_e_minus_mu_o)
printf("\n(i)maximum thickness of the plate to experience only rotation of polarization plane is %1.2f mm",I_max*10^3)
printf("\n(ii)maximum thickness of the plate to experience only rotation of polarization plane is %1.2f mm",I_max_dash*10^3)
//the answer (ii) varies due to round off error
