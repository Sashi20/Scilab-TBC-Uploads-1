//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 3;     //(m)(Diameter of the circular plate)
gd = 2;    //(m)(Greatest depth)
ld = 1;    //(m)(Least depth)
w = 9.8 * 1;    //(Specific weight of water)

//Total pressure on one face of the plate:
//Let theta = Inclination of the plate with the water surface.

theta = asind((2 - 1)/3);   //(Degrees)

//Area of the circular plate:
A = (%pi/4)*(d^2);   //(m^2)

//Depth of centre of gravity from the water surface:
x_bar = (1 + 2)/2;     //(m)

//Total pressure on one face of the plate:
P = w * A * x_bar;     //(kN)
printf("Total pressure on one face of the plate = %.2f kN\n",P);

//Position of the centre of presure:
//Moment of inertia of a circular plate, about its centre of gravity:
IG = (%pi/64)*(d^4);    //(m^4)

//Depth of centre of pressure from the water surface:
h_bar = (IG * sind(theta)^2)/(A * x_bar) + x_bar;    //(m)
printf("Depth of centre of pressure from the water surface = %.2f m",h_bar);
