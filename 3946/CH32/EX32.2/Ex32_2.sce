//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 5;         //(tonnes)(Mass of the vehicle)
r = 0.5;       //(m)(Radius of each wheel)
m = 0.75;      //(tonne)(Mass of each pair of wheel with axle)
k = 0.4;       //(m)(Radius of gyration of each wheel)
x = 1;         //(m)(Half of the horizontal distance between the centre of the axle)
h = 1.2;       //(m)(Height of the centre of gravity of the vehicle above road surface)
P = 6;         //(kN)(Tractive force)
y = 0.05;      //(m)(Distance between the centre of gravity of the vehicle and the point through which the tractive force acts)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Mass moment of inertia of a pair of wheels:
I = m*k^2;    //(t-m^2)

//Reaction at the front wheels:
RF = (1/2)*[M*g + (P/x)*[(h*I)/(M*r^2 + I) - y]];   //(kN)
printf("Reaction at the front wheels = %.2f kN\n",RF);

//Reaction at the rear wheels:
RR = (1/2)*[M*g - (P/x)*[(h*I)/(M*r^2 + I) - y]];   //(kN)
printf("Reaction at the rear wheels = %.2f kN",RR);
