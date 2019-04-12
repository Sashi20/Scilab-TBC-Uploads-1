clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.38
//calculation of Fermi energy and speed of electron at Fermi energy
//given data
n_e=5.8*10^28; //electron density (in m^-3)
m=9.1*10^-31; //mass (in kg) of an electron
h=6.6*10^-34; //Planck's constant (in Js)
e=1.602*10^-19; //electronic charge (in C)
//calculation
E_F=(h^2/(2*m)*(3*n_e/(8*%pi))^(2/3))/e; //Fermi energy (in eV)
v_F=sqrt((2*E_F*e)/m); //Fermi velocity (in m/s)
printf("\nFermi energy is %0.1f eV",E_F)
printf("\nFermi velocity is %1.2e m/s",v_F)
