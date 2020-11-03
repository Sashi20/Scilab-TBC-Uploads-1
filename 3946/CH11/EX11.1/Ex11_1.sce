//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
D = 300;              //(mm)(Diameter of wheel)
d = 30;               //(mm)(Diameter of axle)
W = 900;              //(N)(Load lifted by the machine)
P = 100;              //(N)(Effort applied to lift the load)

VR = D/d;             //(Velocity ratio)
MA = W/P;             //(Mechanical advantage)
eta = MA/VR;            //(Efficiency)
printf("Efficiency = %.2f %%",eta * 100);
