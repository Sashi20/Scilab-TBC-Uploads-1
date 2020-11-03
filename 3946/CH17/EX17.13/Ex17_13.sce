//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = -28;      //(m/s)(Initial velocity)
t = 2;        //(s)(Time)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//s = u*t + (1/2)*g*t^2;
s = u*t + (1/2)*g*t^2;     //(m)
printf("Distance it will cover in 2 seconds = %.2f m",s);

