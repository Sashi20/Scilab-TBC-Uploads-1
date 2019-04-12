clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.18
//calculation of velocity of spaceship
//given data
a=55; //age of Narayan on earth (in years)
a_dash=45; //age of Narayan in spaceship (in years)
b=75; //age of Raghu on earth (in years)
b_dash=25; //age of Raghu in spaceship (in years)
c=3*10^8; //speed (in m/s) of light
//calculation
T0=a_dash-a; //proper time interval (in years)
T=b-b_dash; //dilated time interval (in years)
v=c*sqrt(1-(T0/T)^2); //velocity (in m/s) of spaceship
printf("\nvelocity of spaceship is %1.2e m/s",v)
//the answers vary due to round off error
