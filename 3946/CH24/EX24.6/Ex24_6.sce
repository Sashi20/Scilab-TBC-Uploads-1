//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 2.5;      //(tonnes)(Mass of the car)
F = 1;        //(kN)(Propelling force)
u = 10;       //(m/s)(Initial velocity)
v = 15;       //(m/s)(Final velocity)

//Let t = Time taken by the car to increase its speed.

//Acceleration of the car:
a = F/m;      //(m/s^2)

//Final velocity of the car:
//Using: v = u + a * t;
t = (v - u)/a;     //(s)
printf("Final velocity of the car = %.2f s",t);
