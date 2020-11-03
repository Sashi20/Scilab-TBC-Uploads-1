//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
G = 1.67;     //(m)(Gauge of the track)
r = 500;      //(m)(Radius of the curve)
v = 12.5;     //(m/s)(Radius of the curve)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Superelevation:
S = (G * v^2)/(g * r) * 1000;        //(mm)
printf("Elevation of the outer rail = %.2f mm",S);    //The answers vary due to round off error
