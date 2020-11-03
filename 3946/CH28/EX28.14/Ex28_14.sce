//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v = 5;     //(m/s)(Velocity of the cycle)
mu = 0.25;  //(Coefficient of friction)
g = 9.8;   //(m/s^2)(Accn due to Gravity)

//Let r = Radius of the curve in metres.

//v = sqrt(mu*g*r);
r = v^2/(mu*g);     //(m)
printf("Radius of the curve in metres = %.2f m",r);
