clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.3
//calculation of (i)separation of the coherent slit images (ii) fringe width
//given data
lambda=5893*10^-10; //wavelength (in m)
mu=1.50; //refractive index of biprism
alpha1=1.04; //refracting angle (in degrees)
alpha2=1.23; //refracting angle (in degrees)
b=56.1; //distance (in cm) of focal planes of eyepiece from the biprism
a=12.4; //distance (in cm) from slit to the biprism
//calculation
d=a*(mu-1)*(alpha1+alpha2)/180*3.14; //separation of coherent slit images(in cm)
D=(a+b); //distance from slit(in cm)
W=(lambda*D*10^-2)/(d*10^-2); //fringe width (in m)
printf("\nseparation of coherent slit images is %0.4f cm",d)
printf("\nfringe width is %0.4f mm",W*10^3)
