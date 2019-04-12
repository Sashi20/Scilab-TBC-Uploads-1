clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.24
//to show how time dilation accounts for the given result of distance of 39 m
//given data
T0=1.77*10^-8; //half-life (in s) of pions
c=3*10^8; //speed (in m/s) of light
//calculation
v=0.99*c; //speed (in m/s) of collimated ion beam
d=T0*v; //distance (in m) travelled by pions in Lab frame
T=T0/sqrt(1-v^2/c^2); //half-life of pion observed in pion frame
d_dash=T*v; //distance (in m) travelled by pions in time T
printf("\nDistance travelled by pions in time T is %2.1f m", d_dash)
printf("\nThus,time dilation accounts for the given result of distance of 39 m")
//the answers vary due to round off error
