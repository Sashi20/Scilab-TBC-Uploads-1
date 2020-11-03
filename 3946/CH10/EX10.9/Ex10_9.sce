//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
VR = 100;            //(Velocity ratio)
W = 600;             //(N)(Load)

//Maximum possible mechanical advantage:
//Comparing the law of machine equation:
m = 0.02;
C = 8;
MaxMA = 1/m;
printf("Maximum possible mechanical advantage = %.2f\n",MaxMA);

//Maximum possible efficiency:
Maxn = 1/(m * VR);
printf("Maximum possible efficiency = %.2f %%\n",Maxn * 100);

//Effort required to lift a load of 600 N:
P = m * W + C;
Feffort = P - W/VR;          //(N)
printf("Effort required to lift a load of 600 N = %.2f N\n",Feffort);

//Efficiency of the machine:
MA = W/P;             //(Mechanical advantage)
eta = MA/VR;            //(Efficiency)
printf("Efficiency of the machine = %.2f %%",eta * 100);
