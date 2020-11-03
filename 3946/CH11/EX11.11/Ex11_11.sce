//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
D = 200;        //(mm)(Diameter of effort wheel)
T = 60;         //(No. of teeth in worm wheel)
r = 40;         //(mm)(Radius of load drum)
W = 9000;       //(N)(Load to be lifted)
P = 75;         //(N)(Effort)

VR = (D * T)/r;      //(Velocity ratio)
MA = W/P;            //(Mechanical advantage)
eta = MA/VR;           //(Efficiency)
printf("Efficiency = %.2f %%",eta * 100);
