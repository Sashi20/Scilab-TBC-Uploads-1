clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.29
//calculation of speed of spacecraft moving relative to earth
//given data
T0=3600; //proper time (in s)
T=3601; //dilated time (in s)
c=3*10^8; //speed (in m/s) of light
//calculation
v=c*sqrt(1-(T0/T)^2); //speed (in m/s) of spacecraft
printf("\nspeed of spacecraft moving relative to earth is %1.1e m/s",v)
