//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 6;      //(tonnes)(Mass of trains and cars)
theta = asind(1/30);      //(Degrees)
r = 0.5;    //(m)(Radius of the drum)
m = 1;      //(tonne)(Mass of drawn)
k = 0.45;   //(m)(Radius of gyration)
T = 3;      //(kN-m)(Torque applied)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//Let P = Tension in the rope,
//a = Linear acceleration of the rope,
//alpha = Angular acceleration of the drum.

//Considering the motion of the cage:

//Component of the weight of the cage along the plane:
CP = M*g*sind(theta);     //(kN)

//Resultant force along the plane:
//R = P - CP;          -(i)

//Force acting on it:
//F = 6*a;            -(ii)

//Equating (i) and (ii):
//P - 1.96 = 6*a      -(iii)

//Considering the motion of the drum:
I = m*k^2;            //(kg-m^2)

//Linear acceleration of the train is equal to the angular acceleration of the drum:
//alpha = 2*a;

//Accelerating torque:
//T1 = 0.4*a;       (kN-m)

//Torque due to tension in the rope:
//T2 = 0.5*P;

//Total torque:
//T = T1 + T2;

//This torque is equal to the torque applied to the drum:
//P = 6 - 0.8*a
//Substituting this value of P in equation (iii):
a = 4.04/6.8;        //(m/s^2)

//Substituting this value of a in equation (iii):
P = 6*a + CP;        //(kN)
printf("Tension in the rope = %.2f kN",P);
