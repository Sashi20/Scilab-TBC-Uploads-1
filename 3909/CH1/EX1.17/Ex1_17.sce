clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.17
//calculation of radius of curvature of lens and thickness of air film at the ring
//given data
lambda=5.9*10^-5; //wavelength of light (in cm)
D_d10=0.50; //diameter of tenth ring (in cm)
n=10; //number of dark ting
//calculation
R=(D_d10^2)/(4*n*lambda); //radius of curvature of lens (in cm)
t_dn=(n*lambda)/2; //thickness of the air film at the lens (in cm)
printf('\nradius of curvature of lens is %0.1f cm',R)
printf('\nthickness of film at the ring is %1.2e cm',t_dn)
