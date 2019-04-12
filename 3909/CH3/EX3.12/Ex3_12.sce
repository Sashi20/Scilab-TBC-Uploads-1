clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.12
//calculation of angles at which first and second order maxima are observed
//given data
lambda=632.8*10^-9; //wavelength (in m) of light
a_plus_b=10^-2/6000; //number of lines per m
//calculation
theta1=asind(lambda/a_plus_b); //angle at which first order maxima is observed
theta2=asind(2*lambda/a_plus_b); //angle at which second order maxima is observed
printf("\nangle at which first order maxima is observed is %0.2f degrees",theta1)
printf("\nangle at which second order maxima is observed is %0.2f degrees",theta2)
//result
//angle at which first order maxima is observed is 22.31 degrees
//angle at which second order maxima is observed is 49.41 degrees
//the answers vary due to round off error
