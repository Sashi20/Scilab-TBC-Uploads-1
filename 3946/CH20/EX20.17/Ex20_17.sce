//OS-version - Windows 10
//Scilab-version - 6.0.2firing.
clc
clear all
u = 80;     //(m/s)(Initial velocity of projection)
alpha = 65;   //(Degrees)(Angle of projection with the horizontal)
t = 5;       //(s)(Time)

//Velocity of the projectile:
V = sqrt(u^2 + g^2*t^2 - 2*u*sind(alpha)*g*t);    //(m/s)

//Direction of the projectile:
//Let theta = Angle which the projectile makes with the horizontal
theta = atand((u*sind(alpha) - g*t)/(u*cosd(alpha))); //(Degrees)

printf("Velocity of the projectile = %.2f m/s\n",V);    //The answers vary due to round off error
printf("Angle which the projectile makes with the horizontal = %.2f degrees",theta);
