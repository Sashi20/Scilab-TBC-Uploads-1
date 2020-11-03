//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 2000;            //(N)(Load)
VR = 40;             //(Velocity ratio)
m = 0.04;
C = 7.5;

//Mechanical advantage:
//Substituting the value of W in the law of machine:
P = m*W + C;        //(N)
MA = W/P;           //(Mechanical advantage)
printf("Mechanical advantage = %.2f N\n",MA);    //The answers vary due to round off error

//Efficiency of the machine:
n = MA/VR;           //(Efficiency)
printf("Efficiency = %.2f o/o\n",n * 100);    //The answers vary due to round off error

//Maximum efficiency of the machine:
Maxn = 1/(m * VR);        //(Maximum efficiency)
printf("Maximum efficiency of the machine = %.2f o/o\n",Maxn * 100);

//Relation between F and W:
//Feffort = W*(m - 1/VR) + C;
printf("Feffort = %.2f W + %.2f\n",(m - 1/VR),C);

//Value of F when W is 2 kN:
W = 2000;      //(N)
F = ((m - 1/VR)*W) + C;        //(N)
printf("Value of F when W is 2 kN = %.2f N",F);
