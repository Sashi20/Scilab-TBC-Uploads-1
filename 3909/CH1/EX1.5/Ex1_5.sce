clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.5
//calculation of refractive index of the film material
//given data
t=6.3*10^-4*10^-2; //thickness of thin sheet of mica (in m)
lambda= 5460*10^-10; //wavelength of light (in m)
n=6; //sixth bright fringe
//calculation
mu=1+(n*lambda)/t; //refractive index of the film material
disp(mu,'refractive index of the film material is')
