//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 800;    //(kg)(Mass of the body A)
m2 = 600;    //(kg)(Mass of the body B)
r = 0.4;     //(m)(Radius of pulley)
M = 100;     //(kg)(Mass of pulley)
k = 0.4;     //(m)(Radius of gyration)
a = -1;      //(m/s^2)(Acceleration)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Pull in the rope carrying 800 kg mass:
P1 = m1*(g - a);     //(N)

//Pull in the rope carrying 600 kg mass:
P2 = m2*(g + a);     //(N)

//Moment of inertia of the body:
I = M*k^2;           //(kg-m^2)
//Angular acceleration of the body:
alpha = a/r;         //(rad/s^2)

//Torque due to rotation of the pulley:
T1 = I*alpha;        //(N-m)

//Torque acting on the pulley due to difference of pulls in the two ropes:
T2 = (P1 -P2)*r;     //(N-m)

//Torque which must be applied to the pulley:
T = T2 - T1;          //(N-m)

printf("Torque which must be applied to the pulley = %.2f N-m",T);
