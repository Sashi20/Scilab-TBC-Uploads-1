clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.8
//calculation of fringe width
//given data
lambda= 6000*10^-10; //wavelength (in m) of monochromatic light 
L=0.15; //distance (in m) from the edge of the wedge
h=0.03*10^-3; //diameter of wire (in m)
mu=1; //refractive index of air
//calculation
W=(lambda*L)/h; //fringe width (in m)
printf('\nfringe width  is %1.0e m',W)
