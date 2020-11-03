//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
T = 40;     //(No. of teeth on the worm wheel)
D = 300;    //(mm)(Diameter of the effort wheel)
r = 50;     //(mm)(Radius of load drum)
W = 1800;   //(N)(Load lifted)
P = 24;     //(N)(Effort)

VR = (D * T)/(2 * r);    //(Velocity ratio)
MA = W/P;                //(MEchanical advantage)
eta = MA/VR;               //(Efficiency)
printf("Efficiency = %.2f %%",eta * 100);
