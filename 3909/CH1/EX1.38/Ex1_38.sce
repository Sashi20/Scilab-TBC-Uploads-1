clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.38
//calculation of pressure within the tube
//given data
l=5*10^-2; //length (in m) of tube
lambda=589.3*10^-9; //wavelength (in m) of sodium light
n=10; //number of fringes
//calculation
//given that refractive index, mu=1+3*10^-4*p, where p is pressure in atm
//from the formula 2*(mu-1)*l=n*lambda
p=(n*lambda-1+1)/(2*l*3*10^-4); //pressure (in atm) within the tube (by replacing the value of mu by 1+3*10^-4*p)
printf("\npressure within the tube is %1.4f atm",p)
