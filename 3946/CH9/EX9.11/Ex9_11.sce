//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d = 75;              //(mm)(Mean diameter of thread)
r = 37.5;            //(mm)(Radius)
p = 15;              //(mm)(Pitch of thread)
l = 500;             //(mm)(Length of lever)
W = 25000;              //(N)(Load to be lowered)
mu = 0.05;            //(Coefficient of friction between the screw and thread)
phi = atand(mu);       //(Degrees)

//alpha = Helix angle
alpha = atand(p/(%pi * d));           //(Degrees)

//Effort required at the mean radius of the screw to lower the load:
P = W * tand(alpha - phi);        //(N)

//Effort required at the end of the handle:
P1 = (P * r)/l;                   //(N)
printf("Effort required at the end of the handle = %.2f N",P1);              //The answers vary due to round off error
