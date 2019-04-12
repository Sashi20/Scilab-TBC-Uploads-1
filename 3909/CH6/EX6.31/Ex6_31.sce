clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.31
//calculation of (a)interval at which B receives signals from A (b)interval at which C receives signals from A (c)interval at which B receive C's flashes
//given data
c=3*10^8; //speed (in m/s) of light
T0=6; //interval (in minutes) observer A signals with flash light
//calculation
v=0.6*c; //speed (in m/s) of a spaceship
//using longitudinal Doppler's effect
T1=T0; //since there is no relative motion between A and B, B receives signal in the same time as A flashes
T=T0*sqrt((1+v/c)/(1-v/c)); //interval (in minutes)at which C receives signals from A
T_dash=T*sqrt((1-v/c)/(1+v/c)); //interval (in minutes)at which B receives signals from C
printf("\n(a)interval at which B receives signals from A is %d minutes",T1)
printf("\n(b)interval at which C receives signals from A is %d minutes",T)
printf("\n(c)interval at which B receives signals from C is %d minutes",T1)
