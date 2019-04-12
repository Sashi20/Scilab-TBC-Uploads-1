clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.26
//calculation of length of laboratory
//given data
T=4*10^-8; //proper time (in s)
l0=10; //length (in m) beam crosses
v=l0/T; //velocity (in m/s)
c=3*10^8; //speed (in m/s)of light
l=l0*sqrt(1-v^2/c^2); //length of laboratory (in m)
printf("\nlength of laboratory is %1.2f m",l)
//the answer provided in the textbook is wrong
