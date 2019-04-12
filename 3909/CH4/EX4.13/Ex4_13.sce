clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.13
//calculation of (i)angular speed and (ii)areal spread
//given data
lambda=7000*10^-10; //wavelength (in m) of light
a=5*10^-3; //aperture (in m)
D=4*10^8; //distance from the earth (in m)
//calculation
theta=(1.22*lambda)/a; //angle (in radian) of diffraction
A=%pi*(D*theta)^2; //areal spread (in m^2)
printf('\n(i)angular spread is %1.1e rad',theta)
printf('\n(ii)areal spead is %1.2e m^2',A)
//(ii)the answers vary due to round off error
