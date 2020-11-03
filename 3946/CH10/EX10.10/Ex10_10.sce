//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//From geometry of graph:
E1 = 142.5;      //(N)(Effort)
E2 = 42.5;       //(N)(Effort)
L1 = 1500;       //(N)(Load)
L2 = 250;        //(N)(Load)
m = (E1 - E2)/(L1 - L2);
C = 22.5;
VR = 18;           //(Velocity ratio)
printf("Law of the machine: P = %.2f W + %.2f\n",m,C);

//Effort required when the load is 2 kN:
L = 2000;                    //(N)(Load)
P = (m * L) + C;          //(N)
printf("Effort required when the load is 2 kN = %.2f N\n",P);

//Efficiency of the machine when the load is 2 kN:
W = 2000;             //(N)(Load)
MA = W/P;             //(Mechanical advantage)
eta = MA/VR;            //(Efficiency)
printf("Efficiency of the machine when the load is 2 kN = %.2f %%\n",eta * 100);    //The answers vary due to round off error

//Maximum efficiency the machine can attain:
Maxn = 1/(m * VR);          //(Maximum efficiency)
printf("Maximum efficiency the machine can attain = %.2f %%",Maxn * 100);
