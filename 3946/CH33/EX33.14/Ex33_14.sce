//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
theta = %pi;     //(rad)
alpha = 30;      //(Degrees)(Half of pulley groove angle)
mu = 0.2;         //(Coefficient of friction)
m = 0.4;         //(kg/m)(Mass of rope)
T = 1500;        //(N)(Permissible tension)
v = 15;          //(m/s)(Velocity of rope)

//Centrifugal tension:
TC = m*v^2;     //(N)
T1 = T - TC;    //(N)

T2 = (T1)/(10^((mu*theta*(1/sind(alpha)))/2.3));   //(N)

//Power transmitted by the rope drive:
P = [(T1 - T2)*v]/1000;          //(kW)
printf("Power transmitted by the rope drive = %.2f kW",P);
//The answers vary due to round off error
