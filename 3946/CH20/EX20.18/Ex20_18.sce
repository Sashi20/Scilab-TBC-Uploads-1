//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 100;      //(m/s)(Initial velocity of the projectile)
alpha = 45;    //(Degrees)(Angle of projection)
theta = 30;    //(Degrees)(Angle of projection at point P)
g = 9.8;       //(m/s^2)(Accn due to Gravity)

//Let t = Time for the particle to reach the point P from O.

//tand(theta) = (u*sind(alpha) - g*t)/(u*cosd(alpha))
t = -((tand(theta)*u*cosd(alpha)) - (u*sind(alpha)))/g;     //(s)
printf("Time for the particle to reach the point P from O = %.2f s\n",t);

//Distance OP:
x = u*cosd(alpha) * t;     //(m)

//Vertical component of velocity:
uy = u*sind(alpha);        //(m)

//Vertical distance AP:
y = uy*t - (1/2)*g*t^2;    //(m)

OP = sqrt(x^2 + y^2);      //(m)
printf("Distance OP = %.2f m",OP);
