//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 150;     //(kg)(Mass of the body A)
m2 = 75;      //(kg)(Mass of the body B)
M = 75;       //(kg)(Mass of the pulley)
k = 0.1;      //(m)(Radius of gyration)
r1 = 0.25;    //(m)(External radius of the pulley)
r2 = 0.125;   //(m)(Internal radius of the pulley)

//Pulls in the strings:
//Let P1 = Pull in the string carying 150 kg mass,
//P2 = Pull in the string carrying 75 kg mass.

//Let a1 = Acceleration of the 150 kg mass,
//a2 = Acceleration of the 75 kg mass,
//alpha = Angular acceleration of the pulley.

//Mass moment of inertia of the pulley:
I = M*k^2;        //(kg-m^2)

//Considering the motion of 150 kg mass:
//Resultant force = 1039 - P1;              -(i)

//Force acting on the body = 150*a1;        -(ii)

//Equating (i) and (ii):
//1039 - P1 = 150*a1                       -(iii)

//Considering the motion of the 75 kg mass:
//Resultant force = P2 - 367.5             -(iv)

//Force acting on the body = 75*a2         -(v)

//Equating (iv) and (v):
//P2 = 367.5 = 75*a2                       -(vi)

//Considering the motion of the pulley:
//a1 = 0.25*alpha
//a2 = 0.125*alpha

//Torque:
//T = 0.25*P1 - 0.125*P2                    -(vii)

//Torque on the pulley:
//T = 0.75*alpha                            -(viii)

//Equating (vii) and (viii):
//P1 = 0.5*P2 + 3*alpha                    -(ix)

//Substituting the value of P1 in equation (iii):
//2078 - P2 = 81*alpha                     -(x)

//From equation (vi):
//P2 - 367.5 = 9.4*alpha                   -(xi)

//(x) + (xi):
alpha = 1710.5/90.4;       //(rad/s^2)

//Substituting the value of alpha in (x):
P2 = 2078 - 81*alpha;                //(N)

//Substituting the value of alpha in (ix):
P1 = (0.5 * P2) + (3 * alpha);       //(N)

//Acceleration of the masses:
a1 = r1*alpha;        //(m/s^2)
a2 = r2*alpha;        //(m/s^2)

printf("Pull in the string carying 150 kg mass = %.2f N\n",P1);
printf("Pull in the string carrying 75 kg mass = %.2f N\n",P2);
printf("Acceleration of the 150 kg mass = %.2f m/s^2\n",a1);
printf("Acceleration of the 75 kg mass = %.2f m/s^2",a2);
//The answers vary due to round off error
