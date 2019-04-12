clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.3
//calculation of speed
//given data
l=48; //length (in m) of rocket in flight
l0=50; //length (in m) of rocket on ground
c=3*10^8; //speed (in m) of light
//calculation
v=c*sqrt(1-(l/l0)^2); //speed (in m)
v0=v/c
printf("\nspeed is %0.1f times the speed of light",v0)
//the answers vary due to round off error
