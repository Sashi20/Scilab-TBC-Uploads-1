//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 800;     //(kg)(Mass of pulley)
k = 0.8;     //(m)(Radius of gyration)
r = 1;       //(m)(Radius of pulley)
T = 60000;   //(N-m)(Torque)
m = 3000;    //(kg)(Mass of the body to be lifted)

//(i) Acceleration of the body:

//Let a = Acceleration of the body,
//alpha = Angular acceleration of the body,
//P = Tension in the rope.

//Considering the motion of the hanging body:
//Resultant force = P - 29400               -(i)
//Force acting on the body = 3000*a         -(ii)

//Equating (i) and (ii):
//P - 29400 = 3000*a                        -(iii)

//Moment of inertia of the pulley:
I = M*k^2;     //(kg-m^2)

//Accelerating torque:
//T1 = T*alpha = 512 * alpha;

//Torque due to tension in the rope:
//T2 = P*r = P;

//Total torque:
//T = T1 + T2;

//60000 = T;
//P = 60000 - 512*a

//Substituting the value of P in equation (iii):
a = 30600/3512;       //(m/s^2)
printf("Acceleration of the body = %.2f m/s^2\n",a);

//(ii) Tension of the rope:
//Substituting the value of a in equation (iii):
P = [3000*a + 29400]/1000;       //(kN)
printf("Tension of the rope = %.2f kN",P);
