clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.7
//calculation of wavelength of light used
//given data
a=0.2; //width of slit (in mm)
f=2; //distance of slit from screen (in m)
y=6; //distance of first minimum on either side of central maxima (in mm)
//calculation
lambda=y*10^-3*a*10^-3/f; //wavelength of light (in m)
printf("\nwavelength of light is %d Armstrong",lambda*10^10)
