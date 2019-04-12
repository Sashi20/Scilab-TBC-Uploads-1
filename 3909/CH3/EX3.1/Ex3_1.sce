clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.1
//calculation of distances of the first dark band and the next bright band 
//given data
lambda=4890*10^-10; //wavelength (in m) of light
a=0.5*10^-2; //width (in m) of slit
f=40*10^-2; //focal length (in m) of lens
//calculation
y_1_d=lambda/a*f; //position of first dark band
y_1_b=3/2*lambda/a*f; //position of the first bright band next to dark
del_y=y_1_b-y_1_d; //distances of the first dark band and the next bright band 
printf("\ndistances of the first dark band and the next bright band is %1.3e m",del_y)
