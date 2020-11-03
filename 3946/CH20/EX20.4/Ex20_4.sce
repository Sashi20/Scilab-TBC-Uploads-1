//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
alpha = 30;      //(Degrees)(Angle of projection with the horizontal)
u = 40;          //(m/s)(Velocity of projection)
g = 9.8;         //(m/s^2)(Accn due to Gravity)

t = (2*u*sind(alpha))/g;     //(s)
printf("Time taken by the projectile to reach the ground after the instant of firing = %.2f s",t);
