//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 35;     //(kW)(Power to be transmitted)
d = 1.5;    //(m)(Effective diameter of pulley)
N = 300;    //(r.p.m.)(Speed of pulley)
theta = 2*%pi*(11/24);    //(rad)
mu = 0.3;    //(Coefficient of friction)
t = 0.0095;    //(m)(Thickness of belt)
rho = 1100;    //(kg/m^3)(Mass density of the belt material)
sigma = 2.5 * 10^6;;    //(N/m^2)

//Let b = Width of the belt
//T1 = Tension on the tight side of the belt, and
//T2 = Tension on the slack side of the belt.

//Velocity of the belt:
v = (%pi*d*N)/60;      //(m/s)

//Power transmitted:
//Let T1 - T2 = T12
//P = (T1 - T2)*v;
T12 = P/v;        //(N)          (i)

//Also:
//2.3*log10(T1/T2) = u*theta;
//T1 = 2.375*T2;

//Substituting the value of T1 in equation (i):
T2 = 1486/1.375;     //(N)
T1 = 2.375 * T2;     //(N)

//Maximum tension in the belt:
//T = sigma*b*t = 23750*b N

//Mass of the belt per metre length:
//m = (b * t)*1*rho = 10.45*b N

//Centrifugal tension:
//TC = m*v^2 = 5800*b N

//Tension on the tight side of the belt:
//T1 = T - TC = 17950*b
b = T1/17950 * 1000;     //(mm)
printf("Width of the belt = %.2f mm",b);   //The answers vary due to round off error
