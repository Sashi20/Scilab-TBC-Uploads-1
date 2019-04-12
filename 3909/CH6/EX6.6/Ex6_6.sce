clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.6
//calculation of proper half-time of the particles and traversed length 
//given data
l_0=2; //length (in m) observed by lab observer
T=1.0*10^-8; //improper time (in s)
c=3*10^8; //speed of light (in m/s)
//calculation
v=l_0/T; //velocity (in m/s) of particles
T0=T*sqrt(1-v^2/c^2); //proper half-time (in s)
l=l_0*sqrt(1-v^2/c^2); //contracted length (in m)
printf("\nproper half-time is %1.2e s",T0)
printf("\ncontracted length is %0.2f m",l)
