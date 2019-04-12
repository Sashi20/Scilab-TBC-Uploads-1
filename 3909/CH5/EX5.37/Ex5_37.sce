clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.37
//calculation of Fermi energy for copper
//given data
h=6.626*10^-34; //Planck's constant (in Js)
m=9.1*10^-31; //mass of electron (in kg)
n=8.49*10^28; //number of conduction electrons per unit volume
e=1.6*10^-19; //electronic charge (in C)
//calculation
E_F=h^2/(2*m)*((3*n)/(8*%pi))^(2/3); //Fermi energy (in J) for copper
printf("\nFermi energy for copper is %0.2f eV",E_F/e)
