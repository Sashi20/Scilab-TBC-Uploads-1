//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 15;      //(kg)(Mass of body B)
m2 = 25;      //(kg)(Mass of body A)
alpha2 = 20;      //(Degrees)(Inclination of plane PQ with horizontal)
alpha1 = 60;      //(Degrees)(Inclination of plane QR with horizontal)
u = 0;            //(Initial velocity)
t = 3;            //(s)(Time)

//Acceleration of the body B:
//Let a = Acceleration of system,
//T = Tension in the cord.

//Considering the motion of the body B:
//Resultant force = 127.3 - T;       (N)    -(1)

//Force acting on it = 15*a;                -(2)

//Equating (1) and (2):
//127.3 - T = 15*a                          -(3)

//Considering the motion of the body A:
//Resultant force = 83.8 + T                -(4)

//Force acting on it = m2*a = 25*a          -(5)

//Equating (4) and (5):
//83.8 + T = 25*a                          -(6)

//Solving (3) and (6):
a = 211.1/40;            //(m/s^2)

//Distance moved by the body in 3 seconds:
s = u*t + (1/2)*a*t^2;       //(m)
printf("Distance moved by the body in 3 seconds = %.2f m",s);    //The answers vary due to round off error
