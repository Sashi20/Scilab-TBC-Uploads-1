clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.31
//calculation of strength of solution
//given data
S=66; //specific rotation (in dm/gm/lit)
theta=11; //angle of rotation of plane of polarization (in degrees)
l=2; //length (in m)
//calculation
c=theta/(S*l); //strength of solution (in gm/litre)
printf("\nstrength of solution is %0.3f gm/litre",c)
