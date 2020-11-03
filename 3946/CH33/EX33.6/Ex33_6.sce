//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
T1 = 1000;   //(N)(Tension in the tight side)
T2 = 800;    //(N)(Tension in the slack side)
v = 75;      //(m/s)(Speed of the belt)

//Power transmitted by the belt:
P = [(T1 - T2)*v]/1000;     //(kW)
printf("Power transmitted by the belt = %.2f kW",P);
