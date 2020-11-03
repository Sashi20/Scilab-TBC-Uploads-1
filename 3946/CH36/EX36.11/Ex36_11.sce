//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
L = 1;      //(m)(Length of the conical buoy)
D = 1.2;    //(m)(Diameter of base of the conical buoy)
g = 9.8;    //(Acceleration due to gravity)

//Let l = Length of the cone immersed in water.

//Volume of water displaced:
//V = (1/3) * %pi * (0.6 * l)^2 * l      (m^3)
//V = 0.377 * l^3                        (m^3)

//Moment of inertia of circular section:
//I = (%pi/64) * (1.2 * l)^4;

//BM = I/V = 0.27 * l                    (m)

//Distance of buoyancy from the apex:
//OB = 0.75 * l;

//Distance of c.g. from the apex:
OG = 0.75 * L;         //(m)

//For stable equilibrium, the metacentre (M) should be above G or may coincide with G:
//i.e.,        BG <= BM
//Solving:
l = 0.75/1.02;         //(m)

//Volume of water displaced:
V = (%pi/3)*(D/2)^2 * l^3;       //(m^3)

//This should be equal to the weight of the buoy, weight of the buoy:
W = V * g;           //(kN)
printf("Weight of the buoy = %.2f kN",W);
