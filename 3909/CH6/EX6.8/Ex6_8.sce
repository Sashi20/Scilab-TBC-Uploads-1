clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.8
//calculation of percentage change in the area if its speed is c/2
//given data
c=3*10^8; //speed (in m/s) of light
v=c/2; //speed (in m/s) of square
P=[(1-v^2/c^2)^(1/2)-1]*100; //P is the percentage change in area. In book it is given as (S'-S)/S*100
printf("\npercentage change in the area is %0.1f percent",P)
printf("\nthus, area decreases by %0.1f percent",-P)
