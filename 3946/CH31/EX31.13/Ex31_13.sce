//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 30;    //(kg)(Mass of the body A)
m2 = 10;    //(kg)(Mass of the body B)
k = 0.07;   //(m)(Radius of gyration of the pulley)
M = 4;      //(kg)(Mass of the pulley)
r1 = 0.05;  //(m)(Internal radius of the pulley)
r2 = 0.1;   //(m)(External radius of the pulley)

//Angular acceleration of the pulley:
//Let P1 = Pull in the string carrying 30 kg mass,
//P2 = Pull in the string 10 kg mass,
//alpha = Angular acceleration of the body.

//Let a1 = Acceleration of the mass 30 kg,
//a2 = Acceleration of the mass 10 kg.

//Mass moment of inertia of the pulley:
I = M*k^2;        //(kg-m^2)

//Considering the motion of mass 30 kg;
//Resultant force = 294 - P1                 -(i)

//Force acting on the body = 30*a1           -(ii)
//Equating (i) and (ii):
//294 - P1 = 30*a1                           -(iii)

//Considering mass 10 kg:
//Resultant force = P2 - 98                  -(iv)

//Force acting on it = 10*a2                 -(v)

//Equating (iv) and (v):
//P2 - 98 = 10*a2                            -(vi)

//Considering the motion of the pulley:
//a1 = 0.05*alpha
//a2 = 0.1*alpha

//Torque:
//T = P1*r1 - P2*r2 = 0.05*P1 - 0.1*P1        -(vii)

//Torque on the pulley:
//T = 0.02*alpha                              -(viii)

//Equating (vii) and (viii):
//P1 = 0.4*alpha + 2*P2                       -(ix)

//Substituting this value of P1 in equation (iii):
//147 - P2 = 0.95*alpha                       -(x)

//from equation (vi):
//P2 - 98 = alpha;                             -(xi)

//Adding (x) and (xi):
alpha = 49/1.95;             //(rad/s^2)

//Pulls in the two parts of the pulley:
P2 = 147 - 0.95*alpha;              //(N)

P1 = (0.4 * alpha) + 2*P2;          //(N)

printf("Angular acceleration of the body = %.2f rad/s^2\n",alpha);
printf("Pull in the string carrying 30 kg mass = %.2f N\n",P1);
printf("Pull in the string 10 kg mass = %.2f N",P2);    //The answers vary due to round off error
