clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.3
//calculation of width of slit for which receiver would show zero intensity
//given data
nu=6000*10^6; //frequency (in Hz)
theta=30; //angle (in degrees)
n1=1
n2=2
n3=3
c=3*10^8; //speed (in m/s) of light
//calculation
lambda=c/nu; //wavelength (in m)
//for n=1
a1=(n1*lambda)/sind(theta); //width of slit (in m)
//for n=2
a2=(n2*lambda)/sind(theta); //width of slit (in m)
//for n=3
a3=(n3*lambda)/sind(theta); //width of slit (in m)
printf("\nwidth of slit for which receiver would show zero intensity when n is 1 is %1.1f",a1)
printf("\nwidth of slit for which receiver would show zero intensity when n is 2 is %1.1f",a2)
printf("\nwidth of slit for which receiver would show zero intensity when n is 3 is %1.1f",a3)
printf("\nthe width of slit thus increases in the same way with the increase in n")
