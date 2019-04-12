clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.24
//calculation of radius of curvature of lens 
//given data
lambda=5*10^-7; //wavelength of light (in m)
D_10d=0.5*10^-2; //diameter of 10th dark ring (in m)
n=10; //number of dark ring
//calculation 
R=D_10d^2/(4*n*lambda); //radius of curvature (in m)
disp(R,'radius of curvature (in m) is')
