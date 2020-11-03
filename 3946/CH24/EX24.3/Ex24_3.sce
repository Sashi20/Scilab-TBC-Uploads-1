//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 7.5;    //(kg)(Mass of body)
u = 1.2;    //(m/s)(Velocity)
F = 15;     //(N)(Force)
t = 2;      //(s)(Time)

//Acceleration of the body:
a = F/m;           //(m/s^2)

//Velocity of the body after 2 s:
v = u + a * t;     //(m/s)
printf("Velocity of the body after 2 s = %.2f m/s",v);
