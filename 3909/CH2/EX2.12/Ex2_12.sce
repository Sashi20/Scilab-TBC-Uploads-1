clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.12
//calculation of wavelengths in visible region for which it will act as (i)QW plate (ii)HW plate
//given data
l=0.1436*10^-3; //thickness (in m) of plate
mu_o=1.5443; //refractive index of ordinary light
mu_e=1.5533; //refractive index of extraordinary light
n1=3
n2=4
n3=5
n=2
//calculation
//for QWP
lambda1=(4*l*(mu_e-mu_o))/(2*n1+1)
lambda2=(4*l*(mu_e-mu_o))/(2*n2+1)
lambda3=(4*l*(mu_e-mu_o))/(2*n3+1)
//for HWP
lambda=(2*l*(mu_e-mu_o))/(2*n+1)
printf("\n(a)visible wavelength when n=3 is %d Armstrong",lambda1*10^10)
printf("\n(a)visible wavelength when n=4 is %d Armstrong",lambda2*10^10)
printf("\n(a)visible wavelength when n=5 is %d Armstrong",lambda3*10^10)
printf("\n(b)visible wavelength when n=2 is %d Armstrong",lambda*10^10)
//the second part of answer (a) is given wrong in the textbook
//the third part of answer (a) varies due to round off error
//the answer (b) varies due to round off error
