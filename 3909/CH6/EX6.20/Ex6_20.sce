clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.20
//calculation of time interval measured by astronaut in his clock and time observed by observer on earth
//given data
L0=8; //number of light years
c=3*10^8; //speed (in m/s) of light 
//calculation
v=0.8*c; //speed (in m/s) of spaceship
L=L0*sqrt(1-v^2/c^2); //contracted length (in light years)
del_t=round((L*3*10^8)/v); //time interval (in years) measured by astronaut in his clock
t=10+8; //time (in years) observed by observer on earth
printf("\ntime interval measured by astronaut in his clock is %d years",del_t)
printf("\ntime observed by observer on earth is %d years",t)
