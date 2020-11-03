//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
H = 4;    //(m)(Depth of the point below the free surface of water)
w = 9.8;  //(kN/m^3)

//Pressure at the point:
p = w * H;     //(kN/m^2)
printf("Pressure at the point = %.2f kN/m^2",p);
