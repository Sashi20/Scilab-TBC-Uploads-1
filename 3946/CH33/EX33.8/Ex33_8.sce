//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 0.6;    //(m)(Diameter of pulley)
N = 200;    //(r.p.m.)(Speed of the pulley)
mu = 0.25;   //(Coefficient of friction)
theta = 160 * (%pi/180);    //(rad)(Angle of lap)
T1 = 2.5;   //(kN)(Maximum tension)

//Let T2 = Tension in the belt in slack side.

//Speed of the belt:
v = (%pi*d*N)/(60);    //(rad/s)

//2.3*log(T1/T2) = u*theta;
T2 = (T1)/(10^((mu*theta)/2.3));   //(kN)

//Power transmitted by the belt:
P = (T1 - T2)*v;    //(kW)
printf("Power transmitted by the belt = %.2f kW",P);
//The answers vary due to round off error
