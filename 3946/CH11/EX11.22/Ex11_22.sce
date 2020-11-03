//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
p1 = 10;        //(mm)(Pitch of the screw jack)
p2 = 7;         //(mm)
eta = 0.28;       //(Efficiency)
l = 360;        //(mm)(Arm length of screw jack)
W = 5000;       //(N)(Load lifted)
VR = (2 * %pi * l)/(p1 - p2);     //(Velocity ratio)
//MA = W/P = 5000/P;
//n = MA/VR;
P = W/(VR * eta);      //(Effort required to lift the load)
printf("Effort required to lift the load = %.2f N",P);    //The answers vary due to round off error
