clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.11
//calculation of nature of retardation plate
//given data
t=8.56*10^-7; //thickness (in m) of calcite plate 
lambda=5890*10^-10; //wavelength (in m) of light
mu_o=1.658; //refractive index of extraordinary light
mu_e=1.486; //ordinary index of ordinary light
//calculation
delta_by_lambda=((mu_o-mu_e)*t)/lambda; //path difference
printf("\npath difference creted by plate is %1.1f",delta_by_lambda) 
//the answer provided in the textbook is wrong
