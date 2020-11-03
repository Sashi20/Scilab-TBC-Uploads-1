//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 1.125;    //(m)(Length of connecting rod)
r = 0.25;     //(m)(Length of crank)
N = 420;      //(r.p.m.)(Angular rotation of crank)
theta = 40;   //(Degrees)(Angle traversed by the crank)

//Angular velocity of crank:
omega = (2 * %pi * N)/60;       //(rad/s)

//Velocity of B:
vB = omega * r;                 //(m/s)

vC = 8.3;                   //(m/s)
printf("Velocity of C = %.2f m/s",vC);
