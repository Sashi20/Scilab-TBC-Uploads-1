clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.35
//calculation of velocity of particle B relative to A
//given data
c=3*10^8; //speed (in m/s) of light
Vx=0; //velocity along x-direction
//calculation
v=0.5*c; //velocity (in m/s) of particle A along x-direction
Vy=0.4*c; //velocity (in m/s) of particle B along y-direction
Vx_dash=(Vx-v)/(1-(v*Vx)/c^2); //velocity component along x-direction of particle B in reference frame of A
Vy_dash=(Vy*sqrt(1-v^2/c^2))/(1-(v*Vx)/c^2); //velocity component along y-direction of particle B in reference frame of A
V_dash=sqrt(Vx_dash^2+Vy_dash^2); //velocity of particle B relative to A (in m/s)
theta=atand(Vx_dash/Vy_dash); //nangle at which it is inclined with the y_dash axis along the negative x_dash direction (in degrees)
printf("\nvelocity of particle B relative to A is %0.2f times the speed of light",V_dash/c)
printf("\nangle at which it is inclined with the y_dash axis along the negative x_dash direction is %d degree",theta)
