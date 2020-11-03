//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 80;      //(kg)(Mass of body A)
m2 = 20;      //(kg)(Mass of body B)
P = 400;      //(N)(Force applied on first body)
mu = 0.3;      //(Coefficient of friction)
g = 9.8;       //(Acceleration due to gravity)
R1 = m1*g;     //(N)
F1 = mu*R1;    //(N)
//Acceleration of the two bodies:
//Let a = Acceleration of the bodies,
//T = Tension in the thread.

//Resultant horizontal force on body A:
//P1 = 164.8 - T(towards left)

//Force causing acceleration to the body A:
//F = m1 * a = 80 * a;
//According to D' Alembert's principle:
//T = 164.8 - 80*a       -(1)

//Resultant horizontal force on body B:
//P2 = T - 58.8

R2 = m2*g;        //(N)
F2 = mu*R2;       //(N)
//Force causing acceleration to the body B:
//F = m2 * a = 20 * a;
//According to D' Alembert's principle:
//T = 58.8 + 20*a          -(2)

//Equating (1) and (2):
a = ((P - F1)-(F2))/(m1 + m2);        //(m/s^2)
printf("Acceleration of the bodies = %.2f m/s^2\n",a);

//Tension in the thread:
//Substituting a in equation (ii):
T = F2 + (m2 * a);        //(N)
printf("Tension in the thread = %.2f N",T);
