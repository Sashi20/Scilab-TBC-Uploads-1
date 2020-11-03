//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 5;    //(m)(Length of the tank)
b = 2;    //(m)(Width of the tank)
d = 2.5;  //(m)(Depth of the tank)
w = 9.8 * 1;   //(kN/m^3)(Specific weight)

//Surface area of the base of the tank:
A = l * b;     //(m^2)

//Total pressure on the base of the tank:
P = w * A * d;     //(kN)
printf("Total pressure on the base of the tank = %.2f kN",P);
