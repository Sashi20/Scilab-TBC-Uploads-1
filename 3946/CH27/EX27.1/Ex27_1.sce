//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m1 = 1;    //(kg)(Mass of first ball)
u1 = 2;    //(m/s)(Initial velocity of first ball)
m2 = 2;    //(kg)(Mass of second ball)
u2 = 0;    //(Initial velocity of second ball)
v1 = 0;    //(Final velocity of first ball after impact)

//Velocity of second ball after impact:
//Let v2 = Velocity of the second ball after impact.

//From law of conservation of momentum:
//m1*u1 + m2*u2 = m1*v1 + m2*v2;
v2 = (m1*u1 + m2*u2 - m1*v1)/m2;    //(m/s)
printf("Velocity of the second ball after impact = %.2f m/s\n",v2);

//Coefficient of restitution:
//Let e = Coefficient of restitution;
//From the law of collision of elastic bodies.
e = (v2 - v1)/(u1 - u2);
printf("Coefficient of restitution = %.2f",e);
