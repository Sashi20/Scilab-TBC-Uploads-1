//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
N = 5;       //(rev/s)(Angular rotation of crank)
r = 0.3;     //(m)(Length of the crank)
l = 0.6;     //(m)(Length of the link CB)
BC = l;

//Angular velocity of crank:
omega = (2 * %pi * N);        //(rad/s)

//Velocity of B:
vB = omega * r;               //(m/s)

vC = 6.65;       //(m/s)
printf("Velocity of piston = %.2f m/s\n",vC);

bc = 6.65;       //(m/s)

//Angular velocity of connecting rod:
omega = (bc/BC)/(2 * %pi) * 60;        //(r.p.m.)
printf("Angular velocity of connecting rod = %.2f r.p.m.\n",omega);    //The answers vary due to round off error

//Velocity of D:
vD = 7.43;           //(m/s)
printf("Velocity of D = %.2f m/s",vD);
