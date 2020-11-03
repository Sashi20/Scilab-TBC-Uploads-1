//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
G = 1.67;    //(m)(Gauge of the track)
r = 1000;    //(m)(Radius of curved track)
g = 9.8;     //(m/s^2)(Accn due to Gravity)
n1 = 15;     //(trains)
n2 = 10;     //(trains)
n3 = 5;      //(trains)
n4 = 2;      //(trains)

v1 = 50;     //(kmph)(Speed of n1 trains)
v2 = 60;     //(kmph)(Speed of n2 trains)
v3 = 70;     //(kmph)(Speed of n3 trains)
v4 = 80;     //(kmph)(Speed of n4 trains)

//Equilibrium speed:
v = [(n1 * v1) + (n2 * v2) + (n3 * v3) + (n4 * v4)]/(n1 + n2 + n3 + n4) * 1000/3600;         //(km.p.h.)

//Superelevation:
S = [(G * v^2)/(g * r)] * 1000;        //(mm)
printf("Superelevation = %.2f mm",S);    //(Answer varies due to round off error)
