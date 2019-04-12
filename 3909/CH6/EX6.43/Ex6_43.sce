clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.43
//calculation of velocity of particle
//given data
m0=1; //assuming rest mass to be one for simpicity in solving
c=3.0*10^8; //speed of light (in m/s)
//calculation
m=5*m0; //mass of a particle is five times the rest mass
v=c*sqrt(1-(m0/m)^2); //velocity (in m/s) of the particle
printf("\nvelocity of the particle is %1.3e m/s",v)
