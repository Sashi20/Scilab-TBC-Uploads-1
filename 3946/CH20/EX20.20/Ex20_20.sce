//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 100;      //(m/s)(Initial velocity of projection)
alpha = 30;   //(Degrees)(Angle of projection with the horizontal)
g= 9.8;       //(m/s^2)(Accn due to Gravity)

//Let t = Time from the instant of projection, when the particle will move perpendicular to its initial direction.
theta = -60;    //(Degrees)(Actual angle)

//tand(theta) = (u*sind(alpha) - g*t)/(u*cosd(alpha));
t = -((tand(theta)*u*cosd(alpha)) - u*sind(alpha))/g;   //(s)
printf("Time when the particle will move perpendicular to its initial direction = %.2f s",t);
