//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = 0;          //(Initial velocity)
a = 0.4;        //(m/s^2)(Acceleration)
t = 20;         //(s)(Time taken)

//Distance covered:
s = u*t + (1/2)*a*t^2;      //(m)
printf("Distance covered = %.2f m",s);
