//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 2250;    //(kg)(Mass of vehicle)
b = 1.8;     //(m)(Wheel base)
u = 10;      //(m/s)(Speed of the vehicle)
alpha = 10;  //(Degrees)(Inclination of plane)
x1 = 1;      //(m)(Distance of the c.g. from the front wheel)
h = 0.9;     //(m)(Height of the c.g. above the ground level)
mu = 0.5;     //(Coefficient of friction)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//(i) Distance covered and time taken by the vehicle in coming to stop when it is going up the plane:
//Let RF = Reaction at the front pair of wheels,
//RR = Reaction at the rear pair of wheels,
//s1 = Distance covered by the vehicle in coming to stop.

//Kinetic energy of the vehicle before the brakes are applied:
KE = (1/2)*M*u^2;       //(N-m)       -(i)

//RF + RR  = 21710 N
//Braking resistance in both the pair of wheels:
//BR = mu*(RF + RR) = 10855 N
BR = 10855;             //(N)

//Resistance due to inclination:
RI = M*g*sind(alpha);   //(N)

//Total resistance:
TR = BR + RI;     //(N)

//This total resistance stops the vehicle in a distance of s1 metres. Therefore the work done by the force:
//W = TR*s1;          -(ii)

//Equating (i) and (ii):
s1 = KE/TR;        //(m)
printf("Distance covered by the vehicle in coming to stop when it is going up the plane = %.2f m\n",s1);

//Let a1 = Retardation of the vehicle,
//t1 = Time taken by the vehicle in coming to stop.
v = 0;     //(Final velocity)

//Using: v^2 = u^2 + 2*a*s;
a1 = (v^2 - u^2)/(2*s1);     //(m/s^2)

//Using: v = u + a*t;
t1 = (v - u)/a1;              //(s)
printf("Time taken by the vehicle in coming to stop when it is going up the plane = %.2f s\n",t1);

//(ii) Distance covered and time taken by the vehicle in coming to stop when it is coming down the plane:
//Let s2 = Distance covered by the vehicle in coming to stop.

//Gravitational pull due to inclination:
GPI = M*g*sind(alpha);     //(N)

//Net resistance:
NR = BR - GPI;    //(N)

//This net resistance stops the vehicle in a distance of s2 metres. Work done:
//W = 7027*s2;           -(iii)

//Equating (i) and (iii):
s2 = KE/NR;        //(m)
printf("Distance covered by the vehicle in coming to stop when it is coming down the plane = %.2f m\n",s2);

//Let a2 = Retardation of the vehicle,
//t2 = Time taken by the vehicle in coming to stop.

//Using: v^2 = u^2 + 2*a*s;
a2 = (v^2 - u^2)/(2*s2);      //(m/s^2)

//Using: v = u + a*t;
t2 = (v - u)/a2;             //(s)
printf("Time taken by the vehicle in coming to stop when coming down the plane = %.2f s",t2);
