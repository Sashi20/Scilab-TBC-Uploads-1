clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.2
//calculation of width of the slit
//given data
lambda=5000*10^-10; //wavelength (in m) of light
y=5*10^-3; //distance (in m) of first minimum
f=2; //focal length (in m)
//calculation
a=(lambda*f)/y; //width (in m) of the slit
printf("\nwidth of the slit is %1.1f mm",a*10^3)
