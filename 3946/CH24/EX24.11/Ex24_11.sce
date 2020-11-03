//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 50;     //(kg)(Mass of the body)
a = 1.2;    //(m/s^2)(Acceleration)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//Pressure exerted by the body on the floor:
F = m * (g + a);     //(N)
printf("Pressure exerted by the body on the floor = %.2f N",F);
