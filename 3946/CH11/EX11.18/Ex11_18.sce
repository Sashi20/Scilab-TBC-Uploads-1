//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 1000;               //(N)(Weight lifted)
P = 125;                //(N)(Effort)
n = 2 * 5;              //(No. of pulleys)

//Amount of effort wasted in friction:
VR = n;           //(Velocity ratio)

//Amount of effort wasted in friction:
Feffort = P - (W/VR);         //(N)
printf("Amount of effort wasted in friction = %.2f N\n",Feffort);

//Amount of frictional load:
Fload = (P * VR) - W;         //(N)
printf("Amount of frictional load = %.2f N",Fload);     //The answer provided in the textbook is wrong
