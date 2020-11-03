//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F = 300;    //(N)(Pull)
v = 75;     //(m/min)(Velocity)
t = 5;      //(min)(Time)

//Distance travelled in 5 minutes:
s = v*t;    //(m)

//Work done by the horse:
W = (F * s)/1000;      //(kJ)

printf("Work done by the horse = %.2f kJ",W);
