//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F = 50;     //(N)(Retarding force)
m = 20;     //(kg)(Mass of the body)
u = 15;     //(m/s)(Initial velocity)
v = 0;      //(Final velocity)

//Let t = Time taken by the body to stop.

//Retardation:
a = -F/m;       //(m/s^2)

//Using: v = u + a * t;
t = (v - u)/a;   //(s)
printf("Time taken by the body to stop = %.2f s",t);
