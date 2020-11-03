//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
t = 0.008;    //(m)(Thickness of belt)
b = 0.15;     //(m)(Width of belt)
d = 1.2;      //(m)(Diameter of pulley)
N = 180;      //(r.p.m.)(Speed of the pulley)
theta = 190 * (%pi/180);      //(rad)(Angle of lap)
rho = 1000;   //(kg/m^3)(Mass density of the belt material)
sigma = 1.5 * 10^6;   //(N/m^2)(Permissible stress in the belt)
mu = 0.3;     //(Coefficient of friction)

//(i) Power transmitted when the centrifugal tension is considered:
//Let T1 = Tension in the tight side of the belt,
//T2 = Tension in the slack side of the belt.

//Speed of the belt:
v = (%pi*d*N)/60;       //(m/s)

//Maximum tension in the belt:
T = sigma*b*t;         //(N)

//Mass of the belt per metre length:
m = (t * b)*1*rho;     //(kg)

//Centrifugal tension:
TC = m*v^2;            //(N)

//Tension in the tight side:
T1 = T - TC;           //(N)

T2 = (T1)/(10^((mu*theta)/2.3));   //(kN)

//Power transmitted:
P = [(T1 - T2)*v]/1000;        //(N-m/s)
printf("Power transmitted when the centrifugal tension is considered = %.2f kW\n",P);

//(ii) Power transmitted when the centrifugal tension is neglected:
T1 = 1800;     //(N)
T2 = (T1)/(10^((mu*theta)/2.3));   //(kN)

//Power transmitted:
P = [(T1 - T2)*v]/1000;       //(kW)
printf("Power transmitted when the centrifugal tension is neglected = %.2f kW",P);
