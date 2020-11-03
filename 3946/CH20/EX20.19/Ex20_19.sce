//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 500;     //(m/s)(Velocity of projection)
alpha = 35;    //(Degrees)(Angle of projection)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Velocity of the projectile after 29 seconds:
t = 29;       //(s)
v29 = sqrt(u^2 + g^2*t^2 - 2*u*sind(alpha)*g*t);    //(m/s)

//Velocity of the particle after 30 seconds:
t = 30;      //(s)
v30 = sqrt(u^2 + g^2*t^2 - 2*u*sind(alpha)*g*t);    //(m/s)

printf("Velocity of the projectile after 29 seconds = %.2f m/s\n",v29);
printf("Velocity of the particle after 30 seconds = %.2f m/s\n",v30);

//Direction of the projectile after 29 and 30 seconds:
t = 29;      //(s)
theta29 = atand((u*sind(alpha) - g*t)/(u*cosd(alpha)));     //(Degrees)

t = 30;     //(s)
theta30 = atand((u*sind(alpha) - g*t)/(u*cosd(alpha)));     //(Degrees)

printf("Direction of the projectile after 29 seconds = %.2f degrees\n",theta29);
printf("Direction of the projectile after 30 seconds = %.2f degrees",theta30);
