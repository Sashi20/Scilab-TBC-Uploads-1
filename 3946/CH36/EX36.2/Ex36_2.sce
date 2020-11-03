//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 4;        //(m)(Length)
b = 2;        //(m)(Breadth)
h = 1;        //(m)(Height)
V = l * b * h;   //(m^3)
rho = 7;         //(kN/m^3)
g = 9.8;         //(m/s^2)(Acceleration due to gravity)

//Volume of water displaced:
//Weight of the block:
w = V * rho;    //(kN)

//Volume of water displaced:
VD = w/g;     //(m^3)

//Position of the centre of buoyancy:
//Depth of immersion:
d = VD/(l * b);    //(m)

//Centre of buoyancy:
CB = d/2;          //(m)
printf("Centre of buoyancy = %.2f m",CB);    //The answers vary due to round off error
