//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
R = 125;             //(mm)(Radius of larger groove)
r = 115;             //(mm)(Radius of smaller groove)
eta = 0.8;             //(Efficiency)
W = 1500;            //(N)(Load to be raised)

//Let P = Effort required to raise the load
//Velocity ratio:
VR = (2 * R)/(R - r);         //(Velocity ratio)

//MA = W/P = 1500/P;          //(Mechanical advantage)

//n = MA/VR = (1500/P)/VR;
P = W/(VR * eta);             //(Effort required to raise the load)
printf("Effort required to raise the load = %.2f N",P);
