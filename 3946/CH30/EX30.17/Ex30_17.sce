//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 15;      //(tonne)(Mass of the truck)
v = 1.6;     //(m/s)(Velocity of the truck)
k = 1.25;    //(mm/kN)(Buffer spring constant)

//Let x = Maximum compression of the spring in mm

//Kinetic energy of the truck:
KE = (1/2)*m*v^2 * 1000;         //(kN/mm)      -(1)

//Compressive load:
//CL = 0.8*x                (kN)

//Work done in compressing the spring = Average compressive load * Displacement;

//W = (1/2)*(0.8*x)*x;       (kN-mm)     -(2)

//Since the entire kinetic energy of the truck is used to compress the spring therefore equating (1) and (2):
x = sqrt(KE/0.4);           //(mm)
printf("Maximum compression of the spring in mm = %.2f mm",x);
