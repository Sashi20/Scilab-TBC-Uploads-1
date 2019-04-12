clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.7
//calculation of speed of an object
l0=1; //assumption made for simplicity of calculation
c=3*10^8; //speed (in m/s) of light
//calculation
//for 50% contraction
v=c*(sqrt(1-(l0/(2*l0))^2)); //speed (in m/s) of object
v0=v/c
printf("\nspeed of object is %1.3f times the speed of light",v0)
