//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 1000;    //(kW)(Power to be transmit)
d = 1;       //(m)(Diameter of the pulley)
N = 450;     //(r.p.m.)(Speed of the pulley)
T = 2250;    //(N)(Safe pull)
m = 1;       //(kg/m)(Mass of the rope)
theta = 150 * (%pi/180);     //(rad)
alpha = 22.5;      //(Degrees)(Half of the grooe angle)
mu = 0.3;     //(Coefficient of friction)

//Velocity of the ropes:
v = (%pi*d*N)/60;     //(m/s)

//Centrifugal tension:
TC = m*v^2;     //(N)
T1 = T - TC;    //(N)

T2 = (T1)/(10^((mu*theta*(1/sind(alpha)))/2.3));   //(N)

//Power transmitted by one rope:
P1 = [(T1 - T2)*v]/1000;        //(kW)

//No. of ropes:
NOR = P/P1;
printf("No. of ropes = %d",NOR);     //(Answer in textbook is rounded off)
