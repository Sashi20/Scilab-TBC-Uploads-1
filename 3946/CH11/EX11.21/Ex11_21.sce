//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
p1 = 12;           //(mm)(Pitch of the screw)
p2 = 10;           //(mm)
l = 300;           //(mm)(Arm length of screw jack)
W = 7500;          //(N)(Load lifted)
P = 30;            //(N)(Effort)

VR = (2 * %pi * l)/(p1 - p2);     //(Velocity ratio)
MA = W/P;                         //(Mechanical advanyage)
eta = MA/VR;                        //(Efficiency)
printf("Efficiency = %.2f o/o",eta * 100);
