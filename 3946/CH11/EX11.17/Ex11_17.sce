//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
n = 3;          //(No. of pulleys)
W = 320;        //(N)(Weight lifted)
P = 50;         //(N)(Effort)
//Efficiency of the machine:
VR = 2^(n);      //(Velocity ratio of first system of pulleys)
MA = W/P;        //(Mechanical advantage)

eta = MA/VR;       //(Efficiency)
printf("Efficiency = %.2f %%\n",eta * 100);

//Amount of friction:
Fload = (P * VR) - W;        //(N)
printf("Amount of friction = %.2f N\n",Fload);

//Amount of friction in terms of effort:
Feffort = P - (W/VR);       //(N)
printf("Amount of friction in terms of effort = %.2f N",Feffort);
