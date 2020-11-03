//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 1;    //(kg)(Mass of stone)
r = 1;    //(m)(Radius of circle)
v = 10;   //(m/s)(Linear velocity of the stone)

//Centrifugal force = F = (m*v^2)/r
F = (m * v^2)/r;      //(N)
printf("Centrifugal force = %.2f N",F);
