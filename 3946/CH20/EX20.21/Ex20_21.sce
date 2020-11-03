//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 50;       //(m/s)(Initial velocity)
alpha = 50;   //(Degrees)(Angle of projection)
h = 30;       //(m)(Height)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//(i) Velocity of the projectile:
v = sqrt(u^2 - 2*g*h);     //(m/s)
printf("Velocity of the projectile = %.2f m/s\n",v);

//(ii) Direction of the projectile:
theta = atand((sqrt(u^2*sind(alpha)^2 - 2*g*h))/(u*cosd(alpha)));
printf("Direction of the projectile = %.2f degrees",theta);    //The answers vary due to round off error
