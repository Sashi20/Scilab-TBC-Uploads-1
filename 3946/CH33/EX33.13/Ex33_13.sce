//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 4.8;   //(m)(Distance between the centre of the shafts)
r1 = 0.75;    //(m)(Radius of the larger pulley)
r2 = 0.5;     //(m)(Radius of the smaller pulley)
T0 = 3;       //(kN)(Initial tension in the belt)
m = 1.5;      //(kg/m)(Mass of the material)
mu = 0.3;      //(Coefficient of friction)
N2 = 400;     //(r.p.m.)(Speed of the smaller pulley)

//Let T1 = Tension in the tight side of the belt,
//T2 = Tension in the slack side of the belt.

//Velocity of the belt:
v = (%pi*2*r2*N2)/60;     //(m/s)(Diameter d2 = 2 * Radius r2)

//Initial tension in the belt when the belt is stationary:
//3 = (T1 + T2)/2;
//T1 + T2 = 6;      (kN)      (i)

//For an open drive:
alpha = asind((r1-r2)/l);      //(Degrees)

//Angle of lap for the smaller pulley:
theta = (180 - 2*alpha)*(%pi/180);    //(rad)

//Also,
//2.3*log10(T1/T2) = u*theta;
//T1 = 2.49*T2;
//Substituting this value of T1 in equation (i):
T2 = 6/3.49;      //(kN)
T1 = 2.49*T2;     //(kN)

//Power transmitted by the belt:
P = (T1 - T2)*v;      //(kW)
printf("Power transmitted by the belt = %.2f kW",P);
