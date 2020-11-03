//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
b = 1;    //(m)(Base of the plate)
h = 1.5;  //(m)(Altitude of the plate)
theta = 30;    //(Degrees)(Inclination of the plate with the water surface)
w = 9.8 * 1;   //(Specific weight of water)
d = 2;    //(m)(Depth of base)

//Total pressure on the plate:
//Area of the triangular plate:
A = (b * h)/2;     //(m^2)

//Depth of centre of gravity of the plate from the water surface:
x_bar = d + (h/3)*sind(theta);    //(m)

//Total pressure on the plate:
P = w * A * x_bar;    //(kN)
printf("Total pressure on the plate = %.2f kN\n",P);

//Centre of pressure:
//Moment of inertia of the triangular section about its centre of gravity and parallel to the base:
IG = (b * h^3)/36;     //(m^4)

//Depth of centre of pressure from the water surface:
h_bar = (IG * sind(theta)^2)/(A * x_bar) + x_bar;    //(m)
printf("Depth of centre of pressure from the water surface = %.2f m",h_bar);
