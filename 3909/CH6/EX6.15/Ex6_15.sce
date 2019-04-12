clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.15
//calculation of velocity relative to the earth
//given data
l0=50; //proper length (in m) of rocket 
c=3*10^8; //speed (in m/s) of light
t=2*10^-6; //time (in s) taken to move length l
//calculation
v=c/sqrt(((t*c)/l0)^2+1); //speed (in m/s) of rocket
printf("\nvelocity relative to the earth is %1.2f times the speed of light",v/c)
