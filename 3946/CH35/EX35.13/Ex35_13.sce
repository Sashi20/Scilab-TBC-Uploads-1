//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
D = 4;    //(m)(Diameter of the plate)
d = 1;    //(m)(Diameter of the hole)
theta = 30;    //(Degrees)(Inclination of the plate with the horizontal)
w = 9.8 * 1;    //(Specific weight of water)

//Total pressure on the plate:

//Area of the main plate:
A1 = (%pi/4)*(D^2);    //(m^2)

//Area of hole:
A2 = (%pi/4)*(d^2);    //(m^2)

//Depth of centre of gravity of the main plate from the water surface:
x1_bar = 2 + 2*sind(theta);   //(m)
x2_bar = 2 + 1*sind(theta);   //(m)

//Pressure on the main plate:
P1 = w * A1 * x1_bar;      //(kN)
P2 = w * A2 * x2_bar;      //(kN)

//Total pressure on the plate:
P = P1 - P2;     //(kN)
printf("Total pressure on the plate = %.2f kN\n",P);    //The answers vary due to round off error

//Centre of pressure:
//Let h_bar = Depth of the centre of pressure of the plate from the water surface.

//Moment of inertia of the main circular section about its centre of gravity:
IG1 = (%pi/64)*(D^4);    //(m^4)
IG2 = (%pi/64)*(d^4);    //(m^4)

//Depth of centre of pressure of the main plate from the water surface:
h1_bar = (IG1 * sind(theta)^2)/(A1*x1_bar) + x1_bar;    //(m)
h2_bar = (IG2 * sind(theta)^2)/(A2*x2_bar) + x2_bar;    //(m)

//Taking moments about the water surface and equating the same:
h_bar = [(P1 * h1_bar) - (P2 * h2_bar)]/P;     //(m)
printf("Depth of the centre of pressure of the plate from the water surface = %.2f m",h_bar);
//The answers vary due to round off error
