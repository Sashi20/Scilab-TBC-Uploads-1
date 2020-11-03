//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 200;         //(kg)(Mass of the block)
s = 10;          //(m)(Distance)
alpha = 15;      //(Degrees)(Inclination of plane)
g = 9.8;         //(m/s^2)(Accn due to Gravity)

//Resistance due to inclination:
RI = m*g*sind(alpha);    //(N)

//Work done:
W = [RI * s]/1000;     //(kJ)
printf("Work done = %.2f kJ",W);
