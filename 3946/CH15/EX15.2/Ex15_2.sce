//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 30;            //(m)(Span)
yc = 3;            //(m)(Maximum dip)
w = 10;            //(kN/m)(Uniformly distributed load)

//Vertical reaction at the supports:
V = (w*l)/2;       //(kN)

//Horizontal thrust in the cable:
H = (w*l^2)/(8*yc);     //(kN)

//Maximum tension in the cable:
Tmax = sqrt(V^2 + H^2);      //(kN)
printf("Maximum tension in the cable = %.2f kN",Tmax);    //The answers vary due to round off error
