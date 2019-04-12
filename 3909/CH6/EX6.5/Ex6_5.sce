clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.5 
//calculation of proper half-time of the particles and contracted length
//given data
T=4.14*10^-8; //improper time (in s)
l_0=12; //length of the lab (in m)
c=3*10^8; //speed of light (in m/s)
//calculation
v=l_0/T; //velocity (in m/s) of the particles
T0=T*sqrt(1-v^2/c^2); //proper half-time (in s)
l=l_0*sqrt(1-v^2/c^2); //contracted length (in m)
printf("\nproper half-time is %1.2e s",T0)
printf("\ncontracted length is %0.2f m",l)
//the answer provided in the textbook is wrong
