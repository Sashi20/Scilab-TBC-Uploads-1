//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 100;           //(N)(Effort)
W = 840;           //(N)(Load)
VR = 10;           //(Velocity ratio)

MA = W/P;             //(Mechanical advantage)
n = MA/VR;            //(Efficiency)
printf("Efficiency = %.2f %%\n",n * 100);

//Friction of the machine:
Feffort = P - W/VR;        //(N)

//Friction of the machine in terms of load:
Fload = (P * VR) - W;      //(N)

printf("Friction of the machine = %.2f N\n",Feffort);
printf("Friction of the machine in terms of load = %.2f N",Fload);
