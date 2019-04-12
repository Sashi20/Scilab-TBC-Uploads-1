clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.23
//to calculate threshold population inversion density and threshold pump power
//given data
lambda0=632.8*10^-9; //in m
del_nu=10*9; //in Hz
tau_m=10^-7; //in s
l=10*10^-2; //in m
R1=0.98
R2=0.98
n0=1
c=3*10^8; //speed (in m/s) of light
nu=5*10^15
h=6.6*10^-34; //Planck's constant
//calculation
tau=-(2*n0*l)/(c*log(R1*R2)); //in s
N2_minus_N1=(4*n0^3*tau_m*del_nu)/(c*lambda0^2*tau); //threshold popularity inversion density (in m^3)
P_th=((N2_minus_N1)*h*nu)/tau_m; //threshold power (in W/m^3)
printf("\nthreshold popularity inversion density is %1.1e m^3",N2_minus_N1)
disp(P_th,'threshold power (in W/m^3) is' )
//the answers provided in the textbook is wrong
