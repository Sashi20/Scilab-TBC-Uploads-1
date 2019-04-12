clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.23
//calculation of wavelength of light used
//given data
D_n=4.2*10^-3; //diameter of nth dark ring (in m)
D_n_plus_10=7.0*10^-3; //diameter of (n+10)th dark ring (in m)
R=2; //radius of curvature (in m)
//calculation
m=10;
lambda=((D_n_plus_10^2)-(D_n^2))/(4*m*R); //wavelength of light used (in m)
disp(lambda*10^10,'Wavelength of light (in Armstrong) used is')
