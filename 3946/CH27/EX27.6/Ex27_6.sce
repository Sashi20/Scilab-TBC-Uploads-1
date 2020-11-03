//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 1;    //(kg)(Mass of first sphere)
u1 = 3;    //(m/s)(Initial velocity of first sphere)
m2 = 5;    //(kg)(Mass of second sphere)
u2 = 0.6;  //(m/s)(Initial velocity of second sphere)
e = 0.75;  //(Coefficient of restitution)

//Loss of kinetic energy during impact:
EL = [(m1*m2)*(u1-u2)^2*(1-e^2)]/(2*(m1 + m2));
printf("Loss of kinetic energy during impact = %.2f J\n",EL);

//Final velocity of the first sphere:
//Let v1 = Final velocity of the first sphere,
//v2 = Final velocity of the second sphere.

//From law of conservation of momentum:
//m1*u1 + m2*u2 = m1*v1 + m2*v2

//v1 + 5v2 = 6           -(1)

//From law of collision of elastic bodies:
//(v2-v1) = e*(u1-u2)
//v2 - v1 = 1.8         -(2)

//From (1) and (2):
v2 = 7.8/6;           //(m/s)

//Substituting this in eqn (1):
v1 = 6 - (5 * v2);    //(m/s)
printf("Final velocity of the first sphere = %.2f m/s",v1);
