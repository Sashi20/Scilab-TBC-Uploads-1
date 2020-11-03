//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 1.5;     //(tonnes)(Mass of automobile)
v = 15;      //(m/s)(Velocity of automobile)
r = 25;      //(m)(Radius of the sag)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Reaction between the automobile and the load while travelling at the lowest part of the sag:
R = (m*v^2)/r + m*g;      //(kN)
printf("Reaction between the automobile and the load while travelling at the lowest part of the sag = %.2f kN",R);
