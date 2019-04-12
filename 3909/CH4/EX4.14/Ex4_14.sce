clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.14
//calculation of area and intensity of image
//given data
lambda=720*10^-9; //wavelength (in m) of light
d=5*10^-3; //aperture (in m)
f=0.1; //focal length (in m)
P=50*10^-3; //power (in Watt)of laser beam
//calculation
d_theta=(1.22*lambda)/d; //angular spread 
D=f
A=%pi*(D*d_theta)^2 //area of image (in m^2)
I=P/A; //intensity of image (in W/m^2)
printf("\narea of image is %1.2e m^2",A)
printf("\nintensity of image is %1.2e W/m^2",I)
//the answers provided in the textbook are wrong
