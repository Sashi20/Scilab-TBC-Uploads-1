clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.10
//calculation of size of pin-hole
//given data
F=60; //focal length (in cm)
l=10; //length of aperture (in cm)
lambda=633*10^-4; //wavelength (in cm) of light
//calculation
//for zero coherence at the periphery over lens aperture
a=1.22*lambda*F/l; //size of hole (in cm)
//for degree of coherence not below 80% over the aperture
a_dash=0.36*F/l*lambda; //size of hole (in cm)
printf("\nsize of the hole for zero coherence at the periphery over lens aperture is %0.1f micrometer",a*10^4)
printf("\nsize of the hole for degree of coherence not below 80 percent over the aperture is %0.2f micrometer",a_dash*10^4)
//the answer provided in the textbook is wrong
