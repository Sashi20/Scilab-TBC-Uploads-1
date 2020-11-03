//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 1;   //(m)(Diameter of the door)
x = 2;   //(m)(Depth of centre of opening from water level)
n = 1.03;   //(Specific gravity of water)
w = 9.8 * n;   //(Specific weight of water)

//Area of the circular door:
A = (%pi/4)*(d^2);    //(m^2)

//Total pressure:
P = w * A * x;      //(kN)
printf("Total pressure = %.2f kN",P);
