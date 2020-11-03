//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 1800;           //(N)(Load)
P = 100;            //(N)(Effort applied)
T1 = 12;            //(Number of teeth on the larger block)
T2 = 11;            //(Number of teeth on the smaller block)

//Velocity ratio:
VR = (2 * T1)/(T1 - T2);     //(Velocity ratio)
printf("Velocity ratio = %.2f\n",VR);

//Mechanical advantage:
MA = W/P;                    //(Mechanical advantage)
printf("Mechanical advantage = %.2f\n",MA);

//Efficiency of the machine:
eta = MA/VR;            //(Efficiency)
printf("Efficiency = %.2f %%",eta * 100);
