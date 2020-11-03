//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
n = 2;           //(No. of threads)
D = 400;          //(mm)(Diameter of the effort wheel)
r = 50;           //(mm)(Radius of load drum)
eta = 0.35;         //(Efficiency)
P = 80;           //(N)(Effort)
T = 50;           //(No. of teeth in worm wheel)

//Let W = Load which can be lifted by the machine
VR = (D * T)/(n * r);         //(Velocity ratio)

//MA = W/P = W/80;            //(Mechanical advantage)
///eta = MA/VR = (W/80)/200;    //(Efficiency)
W = eta * P * VR;               //(Load which can be lifted by the machine)
printf("Load which can be lifted by the machine = %.2f N",W);
