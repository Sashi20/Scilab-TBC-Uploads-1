//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
p = 10;         //(mm)(Pitch of thread)
l = 400;        //(mm)(Length of the handle)
W = 2000;       //(N)(Load lifted)
eta = 0.45;       //(Efficiency)
VR = (2 * %pi * l)/p;       //(Velocity ratio)
//MA = W/P = 2000/P;        //(Mechanical advantage)

//n = MA/VR;
P = W/(VR * eta);            //(N)(Effort applied)
printf("Effort applied = %.2f N",P);    //The answers vary due to round off error
