//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
w = 9.8 * 0.8;    //(kN/m^3)(Specific weight)
p = 50;           //(kN/m^2)(Intensity of pressure)

//Let H = Depth of oil.

//p = w * H;
H = p/w;     //(m)
printf("Depth of oil = %.2f m",H);
