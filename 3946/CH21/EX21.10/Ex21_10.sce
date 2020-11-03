//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 1;      //(m)(Radius of the pulley)
N = 240;    //(r.p.m.)(Angular frequency)

//Angular velocity of the pulley:
omega = (2 * %pi * N)/60;     //(rad/s)
printf("Angular velocity of the pulley = %.2f rad/sec\n",omega);

//Linear velocity of the particle on the periphery of the pulley:
v = r * omega;      //(m/s)
printf("Linear velocity of the particle on the periphery of the pulley = %.2f m/s",v);
