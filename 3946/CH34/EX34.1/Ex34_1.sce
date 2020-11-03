//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
T = 100;   //(No. of teeth on driver)
p = 40;    //(mm)(Pitch of the two wheels)
F = 100;   //(N)(Tangential force exerted by the driver)
N = 225;  //(r.p.m.)(Speed of the driver)

//Circumference of the pitch circle:
C = [T * p]/1000;        //(m)

//Velocity of driver at the pitch:
v = (C * N)/60;          //(m/s)

//Power transmitted by the gear:
P = [F * v]/1000;        //(kW)
printf("Power transmitted by the gear = %.2f kW",P);
