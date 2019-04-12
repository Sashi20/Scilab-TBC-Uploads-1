clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.43
//calculation of refractive index of second layer
//given data
mu_1=1.38; //refractive index of first layer
mu_air=1; //refractive index of air
mu_g=1.52; //refractive index of glass
//calculation
mu_2=mu_1*sqrt(mu_g/mu_air); //refractive index of second layer
printf("\nrefractive index of second layer is %0.2f",mu_2)
