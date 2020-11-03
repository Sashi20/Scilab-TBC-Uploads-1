//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 13: GRAVITATION
//EX13.11: BLACK HOLE CALCULATIONS
clear;
clc;
m=1.99*10^30; //solar mass in kg
M=3*m; //mass of star in kg
G=6.67*10^-11; //universal gravitational constant in Nm^2/kg^2
c=3*10^8; //speed of light in m/s
Rs=(2*G*M)/c^2; //Schwarzschild radius in m
printf('Schwarzschild radius: %f m',Rs); //answer given in textbook is wrong
rho=M/((4/3)*%pi*Rs^3); //average density of star in kg/m^3
printf('\nAverage density of star: %e kg/m^3',rho); //answer given in textbook is wrong
