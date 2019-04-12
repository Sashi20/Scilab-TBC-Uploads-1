clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.6
//calculation of width of slit
//given data
del_y=0.4*10^-3; //distance (in m) between second and fifth minimum
lambda=6000*10^-10; //wavelenth (in m) of light used
f=60*10^-2; //distance (in m) of screen from slit
//calculation 
a=(3*lambda*f)/del_y; //width (in m) of slit
printf("\nwidth of slit is %1.1f mm",a*10^3)
