//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 7;          //(kg)(Mass)
m = 0.5;        //(kg)(Mass)
delta = 0.01;       //(m)(Deflection when mass is m)
g = 9.8;         //(m/s^2)(Accn due to Gravity)

//Deflection of spring when mass = 7 kg;
Delta = (delta/m) * M;     //(m)

//Period of oscillation:
t = (2*%pi) * sqrt(Delta/g);   //(s)
printf("Period of oscillation = %.2f s",t);
