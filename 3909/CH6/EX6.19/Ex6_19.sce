clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.19
//calculation of length and diameter of spacecraft measured by observer on earth
//given data
L0=120; //length (in m) of spacecraft
c=3*10^8; //speed (in m/s) of light 
D0=20; //diameter (in m) of spacecraft
//calculation
v=0.99*c; //speed (in m/s) of spacecraft
L=round(L0*sqrt(1-v^2/c^2)); //length (in m) of spacecraft observed on earth
D=D0; //diameter being perperpendicular to motion is observed to be the same
printf("\nlength of spacecraft measured by observer on earth is %d m",L)
printf("\ndiameter of spacecraft measured by observer on earth is %2.1f m",D)
