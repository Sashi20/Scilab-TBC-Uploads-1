//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
VR = 30;               //(Velocity Ratio)
W = 1500;              //(N)(Load)
P = 125;               //(N)(Effort)

MA = W/P;             //(Mechanical Advantage)
eta = MA/VR;            //(Efficiency)

printf("Efficiency = %.2f %%\n",eta * 100);
printf("Since efficiency of the machine is less than 50 %%, therefore the machine is non-reversible.");
