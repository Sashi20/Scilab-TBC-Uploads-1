clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.15
//calculation of wavelength of light
//given data
del_h=2.2*10^-6; //distance (in m) raised by the lens 
n_dash=15; //fifteenth bright ring
n=7; //seventh bright ring
//calculation
lambda=(2*del_h)/(n_dash-n); //wavelength (in m) of light
printf("\nwavelength of light used is %d Armstrong",lambda*10^10)
