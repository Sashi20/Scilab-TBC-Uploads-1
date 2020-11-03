//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
b = 1;   //(m)(Base of plate)
h = 1.5; //(m)(Altitude of plate)
theta = 30;   //(Degrees)(Inclination of the plane with the free surface of water)
w = 9.8 * 1;  //(kN/m^3)(Specific weight of water)
d = 2;   //(m)(Depth of base)

//Area of the triangular plate:
A = (b * h)/2;    //(m^2)

//Depth of centre of gravity of the plate from the water surface:
x = d + (h/3)*sind(theta);    //(m)

//Total pressure on the plate:
P = w * A * x;
printf("Total pressure on the plate = %.2f kN",P);
