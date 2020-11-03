//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
VR = 50;               //(Velocity Ratio)
P = 100;               //(N)(Effort)
W = 4000;              //(N)(Load)

//Reversibility of the machine:
MA = W/P;            //(Mechanical Advantage)
eta = MA/VR;           //(Efficiency)

printf("Efficiency = %.2f %%\n",eta * 100);
printf("Since efficiency of the machine is more than 50 %%, therefore the machine is reversible.\n");

//Effort to be applied:
//Let P1 = Effort required to lift a load of 4000 N when the machine is at the point of reversing.

//MA = W/P1 = 4000/P1;
//Efficiency = MA/VR = (4000/P1)/50;
eta = 0.5;    //(Efficiency)
P1 = W/(VR * eta);         //(N)
printf("Effort required to lift a load of 4000 N when the machine is at the point of reversing = %.2f N",P1);
