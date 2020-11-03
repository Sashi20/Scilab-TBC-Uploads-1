//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 50;         //(mm)(Mean diameter of screw jack)
r = 25;         //(mm)(Radius)
p = 10;         //(mm)(Pitch of screw)
u = 0.15;       //(Coefficient of friction between screw and nut)
phi = 8.5;        //(degrees)
l = 700;        //(mm)(Length of the handle)
W = 10;         //(kN)(Load to be raised)

//Let P1 = Effort required at the end of 700 mm long handle to raise the load.
//alpha = Helix angle;
alpha = atand((p)/(%pi * d));          //(degrees)

//Effort required at mean radius of the screw to raise the load:
P = W * tand(alpha + phi);       //(kN)

//Effort required at the end of the handle may be obtained from the relation:
P1 = (P * r)/l * 1000;            //(N)

printf("Effort required at the end of the handle = %.2f N",P1);    //The answers vary due to round off error
