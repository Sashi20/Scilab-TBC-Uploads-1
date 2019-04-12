clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.26
//calculation of zero point energy,energy gap between first two energy states and wavelength of absorption
//given data
h=6.626*10^-34; //Planck's constant (in Js)
m=9.1*10^-31; //mass of an electron (in kg)
a=5*10^-10; //length of molecule (in m)
e=1.6*10^-19; //electronic charge (in C)
c=3*10^8; //speed of light (in m/s)
//calculation
E_l=h^2/(8*m*a^2); //zero point energy (in J)
del_E=4*h^2/(8*m*a^2)-h^2/(8*m*a^2); //energy gap (in J) between first two energy states 
lambda=(h*c)/(4.5*e); //wavelength (in m) of absorption
printf('\nzero point energy is %0.1f eV',E_l/e)
printf('\nenergy gap (in eV) between first two energy states is %0.1f eV',del_E/e)
printf('\nwavelength of absorption is %d Armstrong',lambda*10^10)
