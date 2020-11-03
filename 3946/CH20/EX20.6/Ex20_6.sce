//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 100;       //(m/s)(Velocity of projection)
alpha = 45;    //(Degrees)(Angle of projection with the horizontal)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

H = (u^2 * (sind(alpha))^2)/(2*g);    //(m)
printf("Maximum height to which the bullet will rise = %.2f m",H);
