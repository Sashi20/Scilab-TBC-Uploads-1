//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 50;     //(tonnes)(Mass of the wagon)
u = 0;      //(Initial velocity)
s = 30;     //(m)(Distance)
theta = asind(0.01);    //(Degrees)
Tr = 2.5;   //(kN)(Track resistance)
k = 0.05;   //(mm/kN)(Bumper spring constant)
g = 9.8;    //(m/s^2)(Accn due to Gravity)

//Velocity with which the wagon strikes the post:
//Let v = Velocity with which the wagon strikes the post

//Gravitational pull:
GP = m*g*sind(theta);      //(kN)

//Net force responsible for moving the wagon:
NF = GP - Tr;              //(kN)

//F = m*a;
a = NF/m;                   //(m/s^2)

//Using: v^2 = u^2 + 2*a*s;
v = sqrt(u^2 + 2*a*s);    //(m/s)
printf("Velocity with which the wagon strikes the post = %.2f m/s\n",v);

//Amount by which the spring will be compressed:
//Let x = Amount by which the spring will be compressed in mm.

//Kinetic energy:
KE = (1/2)*(m*v^2) * 1000;       //(kN-mm)    -(i)

//Compressive load:
//CL = 20*x

//Work done in compressing the spring:
//W = Average load * Displacement
//W = 10*x^2                           -(ii)

//Since the entire kinetic energy of wagonis used to compress the spring, therefore equating (i) and (ii)
x = sqrt(KE/10);          //(mm)
printf("Amount by which the spring will be compressed in mm = %.2f mm",x);    //The answers vary due to round off error
