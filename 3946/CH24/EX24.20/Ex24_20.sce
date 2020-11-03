//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v = 4.2;   //(m/s)
w = 80;    //(kg-wt)(Weight of each man)
W = 400;   //(kg-wt)(Weight of the boat)

//Let V = Velocity of the boat after the second man dives off the boat.

//Final momentum = 400 * V       (kg-m/s)   -(1)

//Momentum given by the first man to the boat:
M1 = w * v;       //(kg-m/s)

//Momentum given by the second man to the boat:
M2 = w * v;       //(kg-m/s)

//Final momentum:
M = M1 + M2;      //(kg-m/s)                -(2)

//Equating (1) and (2):
V = M/W;          //(m/s)
printf("Velocity of the boat after the second man dives off the boat = %.2f m/s",V);
