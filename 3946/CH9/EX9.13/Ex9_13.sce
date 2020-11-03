//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 2.5;         //(kN)
d = 75;          //(mm)(Mean diameter of the screw)
p = 12;          //(mm)(Pitch of the screen)
mu = 0.075;       //(Coefficient of friction between the screw and nut)
phi = atand(mu);         //(Degrees)

alpha = atand(p/(%pi * d));       //(Degrees)

//Efficiency of the screw jack:
eta = tand(alpha)/tand(alpha + phi);
printf("Efficiency of the screw = %.2f %%",eta * 100);    //The answers vary due to round off error
