//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 300;           //(mm)
T = 50;            //(No. of teeth in the worm wheel)
p = 10;            //(mm)(Pitch of screw)
P = 100;           //(N)(Effort)
W = 100000;        //(N)(Load lifted)
n = 2;            //(No. of threads)

VR = (2 * %pi * l * T)/(n * p);  //(Velocity ratio)
MA = W/P;                         //(MEchanical advantage)
eta = MA/VR;                        //(Efficiency)
printf("Efficiency = %.2f %%",eta * 100);
