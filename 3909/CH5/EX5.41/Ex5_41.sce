clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.41
//calculation of (i)number of energy states available for conduction (ii)density of conduction electrons
//given data
h=6.63*10^-34; //Planck's constant (in Js)
m=9.1*10^-31; //mass of an electron (in kg)
V=10^-6; //volume of the cube (in m)
E_F=7*1.6*10^-19; //Fermi energy (in joules)
//calculation 
N=(8*sqrt(8))/3*(%pi*V)/h^3*m^(3/2)*E_F^(3/2)
n=((7*8*m*%pi^(2/3))/3^(2/3))^(3/2)
printf("\n(i)number of energy states available for conduction is %1.1e",N)
printf("\n(ii)density of conduction electrons is %1.1e m^3",n)
//the answer (ii) provided in the textbook is wrong

