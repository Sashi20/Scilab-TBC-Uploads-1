//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 1.125;     //(m)(Length of connecting rod)
r = 0.25;      //(m)(Length of crank)
N = 420;       //(r.p.m.)(Angular rotation of crank)
theta = 40;    //(Degrees)(Angle through which the crank has turned)

//Angular velocity of crank:
omega = (2 * %pi * N)/60;       //(rad/s)

//Velocity of B:
vB = omega * r;                //(m/s)

OB = 1.45;       //(m)
OC = 1.1;        //(m)

//Velocity of C:
vC = (vB * OC)/OB;         //(m/s)
printf("Velocity of C = %.2f m/s",vC);
