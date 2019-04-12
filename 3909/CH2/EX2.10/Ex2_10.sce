clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.10
//calculation of thickness of a quarter wave plate
//given data
mu_o=1.553; //refractive index of ordinary light
mu_e=1.544; //refractive index of extraordinary light
lambda=5000*10^-10; //wavelength (in m) of light
//calculation
t_QWP=lambda/(4*(mu_o-mu_e)); //thickness (in m) of a quarter wave plate
printf("\nthickness of a quarter wave plate is %2.2f micrometre",t_QWP*10^6)
//the value of refractive index of extraordinary light is given different in the question than the calculation
