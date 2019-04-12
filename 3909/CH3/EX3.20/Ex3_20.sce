clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.20
//calculation of (a)orders of spectra that will be shown by a plane diffraction grating (b)which wavelengths in the range of 3500 Armstrong and 8000 Armstrong will overlap with the third order 
//given data
lambda=5000*10^-10; //wavelength (in m)
a_plus_b=10^-2/6000; //grating lines per m
theta=90; //maximum angle
n=3; //third order in which wavelengths will overlap
n1=1; //first order
n2=2; //second order
n3=3; //third order
n4=4; //fourth order
n5=5; //fifth order
//calculation
n_max=(a_plus_b*sind(theta))/lambda; //maximum n
lambda1=n*lambda*10^10/n1; //wavelength (in Armstrong) for n=1
lambda2=n*lambda*10^10/n2; //wavelength (in Armstrong) for n=2
lambda3=n*lambda*10^10/n3; //wavelength (in Armstrong) for n=3
lambda4=n*lambda*10^10/n4; //wavelength (in Armstrong) for n=4
lambda5=n*lambda*10^10/n5; //wavelength (in Armstrong) for n=5
printf("\n(a)orders of spectra that will be shown by a plane diffraction grating is %d",n_max)
printf("\n(b)wavelength (in Armstrong) for n=1 is %d Armstrong",lambda1)
printf("\nwavelength (in Armstrong) for n=2 is %d Armstrong",lambda2)
printf("\nwavelength (in Armstrong) for n=2 is %d Armstrong",lambda3)
printf("\nwavelength (in Armstrong) for n=2 is %d Armstrong",lambda4)
printf("\nwavelength (in Armstrong) for n=2 is %d Armstrong",lambda5)
printf("\nthus, amongst the above wavelengths, 7500 Armstrong and 3750 Armstrong fall in the visible region (3500 to 8000 Armstrong)")









