//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
n = 4;        //(No. of pulleys)
W = 1800;     //(Load lifted)
eta = 0.75;     //(Efficiency)

//Effort required to lift the load:
VR = 2^n - 1;          //(Velocity ratio of third system of pulleys)
//MA = W/P = 1800/P;
//n = MA/VR;
P = W/(eta * VR);             //(Effort required to lift the load)
printf("Effort required to lift the load = %.2f N\n",P);

//Effort wasted in friction:
Feffort = P - (W/VR);       //(N)
printf("Effort wasted in friction = %.2f N",Feffort);
