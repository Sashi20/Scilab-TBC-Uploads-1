//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 40;   //(kg)(Mass of the body A)
r1 = 1;    //(m)(Distance between the centre of mass A and the axis of rotation)
l2 = 1;    //(m)(Distance between the lines of action of the bodies A and B)
l3 = 2;    //(m)(Distance between the lines of action of the bodies A and C)
r2 = 1;    //(m)(Radius of the rotating body B)
r3 = 2;    //(m)(Radius of the rotating body C)

//Let m2 = Magnitude of the mass B in kg and
//m3 = Magnitude of the mass C in kg.

//Using:
//m1*r1 = m2*r2 + m3*r3

//m2 + 2*m3 = 40      -(1)

//Using:
//m2*r2*l2 = m3*r3*l3
//m2 = 4*m3           -(2)

//Substituting value of m2 in eqn (1):
m3 = 40/6;     //(kg)
m2 = 4*m3;     //(kg)
printf("Magnitude of the mass B in kg = %.2f kg\n",m2);
printf("Magnitude of the mass C in kg = %.2f kg",m3);
