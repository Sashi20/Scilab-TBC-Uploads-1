//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
N = 120;      //(r.p.m.)(Frequency of piston)
l = 2;        //(m)(Stroke length)
r = 1;        //(m)(Radius)
y = 0.75;     //(m)(Distance of piston from the centre)

//Angular velocity of piston:
omega = (2 * %pi * N)/60;        //(rad/sec)

//Velocity of piston:
v = omega * sqrt(r^2 - y^2);     //(m/s)
printf("Velocity of piston = %.2f m/s\n",v);

//Acceleration of piston:
a = omega^2 * y;                 //(m/s^2)
printf("Acceleration of piston = %.2f m/s^2",a);
