//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
de = 400;          //(mm)(Diameter of effort wheel)
r1 = 150;          //(mm)(Radius of the axles)
r2 = 100;          //(mm)(Radius of the axles)
dr = 10;           //(mm)(Diameter of the rope)
d_a1 = 300;        //(mm)(Diameter of axle)
d_a2 = 200;        //(mm)(Diameter of axle)
P = 25;            //(N)(Effort)
eta = 0.84;          //(Efficiency)

//Let W = Load that can be lifted by the machine
//Effective diameter of the effort wheel:
D = de + dr;      //(mm)(Effective diameter of the wheel)

//Effective diameter of the axles:
d1 = d_a1 + dr;     //(mm)(Effective diameter of axle)
d2 = d_a2 + dr;     //(mm)(Effective diameter of axle)

//Velocity ratio of the differential wheel and axle:
VR = (2 * D)/(d1 - d2);      //(Velocity ratio)

//MA = W/P = W/25;

//n = MA/VR = (W/25)/8.2;
W = eta * VR * P;        //(N)
printf("Load that can be lifted by the machine = %.2f N",W);
