//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 0.3;      //(m)(Radius of the crank)
l = 1.2;      //(m)(Length if connecting rod)
N = 180;      //(r.p.m.)(Angular rotation of crank)
theta = 45;   //(Degrees)(Angle traversed by the crank)
AB = r;
BC = l;

//Angular velocity of the crank:
omega1 = (2 * %pi * N)/60;     //(rad/sec)

//From geometry:
phi = asind((AB * sind(45))/BC);     //(Degrees)

//Velocity of the piston:
Vc = omega1 * (l*sind(phi) + r*cosd(theta)*tand(phi));   //(m/s)
printf("Velocity of the piston = %.2f m/s",Vc);
