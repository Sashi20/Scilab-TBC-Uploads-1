clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.38
//calculation of velocity of rocket as observed from earth moving (a)away from the earth (b)towards the earth
//given data
c=3*10^8; //speed (in m/s) of light
Vx_dash=0.8*c; //velocity (in m/s) of rocket relative to the spaceship
v=0.5*c; //velocity (in m/s) of spaceship moving away from earth
//calculation
V=(Vx_dash+v)/(1+(v*Vx_dash)/c^2); //velocity (in m/s) of rocket as observed from earth moving away from the earth 
V1=(-Vx_dash+v)/(1+(v*-Vx_dash)/c^2); //velocity (in m/s) of rocket as observed from earth moving towards the earth 
printf("\n(a)velocity of rocket as observed from earth moving away from the earth is %1.2f times the speed of light",V/c)
printf("\n(b)velocity of rocket as observed from earth moving towards the earth is %1.1f times the speed of light",V1/c)
