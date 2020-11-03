//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r1 = 0.225;    //(m)(Radius of larger pulley)
r2 = 0.1;      //(m)(Radius of smaller pulley)
l = 1.95;      //(m)(Distance between the centres of the pulleys)
N = 200;       //(r.p.m.)(Speed of the larger pulley)
T1 = 1000;     //(N)(Maximum tension in the belt)
mu = 0.25;      //(Coefficient of friction)

//Let T2 = Tension in the belt in slack side.
//Length of belt:
L = %pi * (r1 + r2) + 2*l + (r1 + r2)^2/l;    //(m)
printf("Length of the belt = %.2f m\n",L);    //The answers vary due to round off error

//Angle of contact between the belt and each pulley:
//Let theta = Angle of contact between the belt and each pulley.

//From geometry:
//Angle(MO1O2) = 180 - theta/2;
//Angle(MO1O2) = 80.4;     (Degrees)
theta = 2*(180 - 80.4);      //(Degrees)
printf(" Angle of contact between the belt and each pulley = %.2f degrees\n",theta);

//Power transmitted by the belt:
//Speed of the belt:
v = (%pi*2*r1*N)/60;        //(m/s)

theta_rad = theta*(%pi/180);     //(rad)

T2 = (T1)/(10^((mu*theta_rad)/2.3));   //(kN)

//Power transmitted by the belt:
P = ((T1 - T2)*v)/1000;         //(kW)
printf("Power transmitted by the belt = %.2f kW",P);
