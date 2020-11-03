//OS-version - Windows 10
//Scilab-version - 6.0.2.
clc
clear all
b = 2;   //(m)(Width of plate)
d = 4;   //(m)(Depth of plate)
w = 9.8; //(kN/m^3)(Specific weight of water)

//Area of the rectangular plate:
A = b * d;        //(m^2)

//Depth of centre of gravity of the plate from the water surface:
x = 2.5 + d/2;    //(m)

//Total pressure on the plate:
P = w * A * x;    //(kN)
printf("Total pressure on the plate = %.2f kN",P);
