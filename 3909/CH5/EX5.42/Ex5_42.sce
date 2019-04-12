clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.42
//calculation of Fermi energy, Fermi velocity and Fermi temperature
//given data
h=6.62*10^-34; //Planck's constant (in Js)
m=9.1*10^-31; //mass of an electron (in kg)
e=1.6*10^-19; //electronic charge (in C)
K_B=1.38*10^-23; //Boltzmann constant (in J/K)
n=5.8*10^28; //number of electrons per unit volume (in m^-3)
//calculation
E_F=(h^2/(2*m)*(3*n/(8*%pi))^(2/3))/e; //Fermi energy (in eV)
v_F=sqrt((2*E_F*e)/m); //Fermi velocity (in m/s)
T_F=(E_F*e)/K_B; //Fermi temperature (in K)
printf("\nFermi energy is %0.2f eV",E_F)
printf("\nFermi velocity is %1.2e m/s",v_F)
printf("\nFermi temperature is %1.2e K",T_F)
