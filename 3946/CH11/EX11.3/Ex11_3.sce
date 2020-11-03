//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
d1 = 80;           //(mm)(Larger diameter of the wheel)
d2 = 70;           //(mm)(Smaller diameter of the wheel)
D = 250;           //(mm)(Diameter of the effort wheel)
W = 1050;          //(N)(Load lifted)
P = 25;            //(N)(Effort)

//Velocity ratio:
VR = (2*D)/(d1 - d2);
printf("Velocity ratio = %.2f\n",VR);       //The answer provided in the textbook is wrong

//Efficiency:
MA = W/P;            //(Mechanical advantage)
eta = MA/VR;           //(Efficiency)
printf("Efficiency = %.2f %%\n",eta * 100);

//Frictional effort lost:
Feffort = P - W/VR;      //(N)
printf("Frictional Effort lost = %.2f N",Feffort);
