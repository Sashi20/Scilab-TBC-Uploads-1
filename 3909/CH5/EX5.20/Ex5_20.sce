clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.20
//calculation of lowest energy of an electron
//given data
h=6.62*10^-34; //Planck's constant (in Js)
m=9.1*10^-31; //mass of electron (in kg)
a=1*10^-10; //length (in m)
//calculation
El=h^2/(8*m*a^2); //lowest energy (in Joule)
printf("\nlowest energy is %0.1f eV",El/(1.602*10^-19))
//the answers vary due to round off error
