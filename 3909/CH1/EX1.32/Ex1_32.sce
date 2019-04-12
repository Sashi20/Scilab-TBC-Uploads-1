clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.32
//calculation of number of bright fringes
//given data
lambda=589.00; //wavelength (in nm) of yellow light
x=1.0000; //distance (in cm) moved by the mirror
//calculation
n=round((2*x*10^-2)/(lambda*10^-9)); //number of bright fringes
printf("\nthe number of bright bringes are %d",n)
