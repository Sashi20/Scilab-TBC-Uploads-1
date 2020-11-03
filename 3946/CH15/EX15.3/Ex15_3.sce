//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 40;         //(m)(Span)
d = 1.5;        //(m)(Width of platform)
Wp = 20;         //(kN/m^2)(Load on platform)
yc = 5;         //(Central dip)
f = 1050;       //(N/mm^2)(Maximum permissible stress in the cable)

//Load per metre lenght of the cable:
W = d * Wp;        //(kN/m)

//Load on each cable:
w = W/2;            //(kN/m)

//Maximum tension in the cable:
Tmax = ((w*l)/2) * sqrt(1 + (l^2/(16 * yc^2))) * 1000;   //(N)

//Necessary cross-sectional area of the cable:
A = Tmax/f;          //(mm^2)
printf("Necessary cross-section area of the cable = %.2f mm^2",A);    //(The answers vary due to round off error)
