//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
n = 2;          //(No. of threads)
T = 60;          //(No. of teeth on the worm wheel)
D = 250;         //(mm)(Diamter of the effort wheel)
r = 50;          //(mm)(Radius of the load drum)
eta = 0.5;         //(Efficiency)
W = 300;         //(N)(Load to be lifted)

VR = (D * T)/(2 * n * r);    //(Velocity ratio)

//MA = W/P = 300/P;           //(Mechanical advantage)
//n = MA/VR = (300/P)/75;     //(Efficiency)
P = W/(VR * eta);               //(Effort required to lift the load)
printf("Velocity ratio of the machine = %.2f\n",VR);
printf("Effort required to lift the load = %.2f N",P);
