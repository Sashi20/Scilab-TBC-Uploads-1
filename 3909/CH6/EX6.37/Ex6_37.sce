clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.37
//calculation of velocity of spacecraft B relative to the ground
c=3*10^8; //speed (in m/s) of light
Vx_dash=0.5*c; //relative velocity (in m/s) of spacecraft B with which it overtakes A
v=0.9*c; //velocity (in m/s) of spacecraft A
Vx=(Vx_dash+v)/(1+(v*Vx_dash)/c^2); //velocity (in m/s) of spacecraft B relative to the ground
Vx1=Vx_dash+v; //clasically, velocity of spacecraft B relative to the ground, which is relativistically impossible
printf("\nvelocity of spacecraft B relative to the ground is %0.4f times the speed of light",Vx/c)
printf("\nclasically,velocity of spacecraft B relative to the ground is %0.1f times the speed of light, which is relativistically impossible",Vx1/c)
