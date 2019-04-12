clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.33
//calculation of width of potential barrier and number of collisions alpha particle makes per second
//given data
A=222; //atomic mass
Z=86-2; //atomic number
E=5.5; //energy (in eV)
e=1.6*10^-19; //charge of an electron
c=3*10^8; //speed (in m/s) of light
m0=9.1*10^-31; //mass of an electron (in kg)
four_pi_epsilon0=1/(9*10^9)
//calculation
r0=1.2*A^(1/3); //radius of nucleus (in fm)
r=(Z*2*e^2)/(E*1.6*10^-13*four_pi_epsilon0)*10^15; //in m
w=(r-r0)*10^-15; //width of the barrier (in m)
mc_sq=E+m0*c^2*10^6
v=c*sqrt(1+1/12^2); //velocity of electron (in m/s)
n=v/(2*r0*10^-15); //number of collisions
printf("\nwidth of potential barrier is %2.2e m",w)
printf("\nnumber of collisions alpha particle makes per second is %1.2e",n)
//the answers vary due to round off error

