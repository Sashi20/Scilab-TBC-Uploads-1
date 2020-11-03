//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
b = 3;   //(m)(Base of the triangle)
h = 6;   //(m)(Altitude of the triangle)
x_bar = 9;   //(m)(Head of the water on its axis)

//Vertical location of centre of pressure:
//Area of the triangular plate:
A = (b * h)/2;     //(m^2)

//Moment of inertia of triangle ABD about AD:
IABD = (6 * 1.5^3)/12;     //(m^4)

//Moment of inertia of triangle ADC about AD:
IADC = IABD;      //(m^4)

//Moment of inertia of the triangle ABC about AD:
IG = IABD + IADC;    //(m^4)

//Depth of centre of pressure of the plate from the water surface:
h_bar = (IG)/(A*x_bar) + x_bar;    //(m)
printf("Depth of centre of pressure of the plate from the water surface = %.2f m\n",h_bar);

//Horizontal location of centre of pressure:
//Will coincide with the centre of the triangle:
vl = 6/3;     //(m)(From BC)
printf("Horizontal location of centre of pressure = %.2f m from BC",vl);
