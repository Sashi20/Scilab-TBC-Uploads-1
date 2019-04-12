clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.8
//calculation of ratio of intensities of two beams
theta1=90-30; //rotation of B (in degrees)
theta2=90-60; //rotation of A (in degrees)
IA_by_IB=cosd(theta1)^2/cosd(theta2)^2; //ratio of intensities of two beams
printf("\nratio of intensities of two beams is %0.2f",IA_by_IB)
