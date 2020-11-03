//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
b = 0.1;   //(m)(Width of the belt)
t = 0.01;  //(m)(Thickness of belt)
v = 20;    //(m/s)(Velocity of the belt)
l = 1;     //(m)(Length)
//Net driving tension(T1 - T2) = 1.8*T2(where T2 is tension in slack side)     -(i)

sigma = 1.8 * 10^6;    //(N/m^2)(Safe stress)
rho = 1000;    //(kg/m^3)(Mass density of leather)

//Power transmitted by the belt:
T = sigma*b*t;    //(N)

//Mass of the belt per metre length:
m = (b * t)*l*rho;     //(kg)

//Centrifugal tension:
TC = m*v^2;     //(N)

//Tension on the tight side:
T1 = T - TC;    //(N)

//Now calculating T2 from (i):
T2 = T1/2.8;    //(N)

//Power transmitted by the belt:
P = [(T1 - T2)*v]/1000;       //(kW)
printf("Power transmitted by the belt = %.2f kW\n",P);

//Speed at which absolute maximum power can be transmitted:
v = sqrt(T/(3*m));        //(m/s)
printf("Speed at which absolute maximum power can be transmitted = %.2f m/s\n",v);    //The answers vary due to round off error

//Absolute maximum power that can be transmitted by the belt:

//Centrifugal tension:
TC = T/3;        //(N)

//Tension on the tight side of the belt:
T1 = T - TC;     //(N)

//Tension on the slack side of the belt:
T2 = T1/2.8;     //(N)

//Power transmitted by the belt:
P = [(T1 - T2)*v]/1000;    //(kW)
printf("Absolute maximum power that can be transmitted by the belt = %.2f kW",P);
