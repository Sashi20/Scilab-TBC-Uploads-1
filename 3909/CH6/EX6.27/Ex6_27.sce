clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.27
//calculation of time taken to reach the star with respect to (a)earth (b)spaceship
//given data
v=3*10^6; //speed (in m/s) of spaceship
c=3*10^8; //speed (in m/s) of light
d=10; //distance (in light years) of star  
//calculation
x=d*c
T0=x/v; //time (in years) measured by the earth
T=x/v*sqrt(1-v^2/c^2); //time (in years) measured on the spaceship
printf("\ntime measured by the earth is %d years",T0)
printf("\ntime measured on the spaceship is %3.1f years",T)
//the formula given in the textbook is wrong
