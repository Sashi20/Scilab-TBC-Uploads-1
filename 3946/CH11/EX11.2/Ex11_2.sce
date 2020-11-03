//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 60 + 420;          //(N)(Total load to be lifted)
d = 100;               //(mm)(Diameter of the load axle)
D = 500;               //(mm)(Diameter of effort wheel)
P = 120;               //(N)(Effort)

//Mechanical advantage:
MA = W/P;
printf("Mechanical advantage = %.2f\n",MA);

//Velocity ratio:
VR = D/d;
printf("Velocity ratio = %.2f\n",VR);

//Efficiency of the machine:
eta = MA/VR;
printf("Efficiency = %.2f %%\n",eta * 100);

//If weight of water is only considered:
printf("If weight of water is only considered:\n");

MA = 420/P;             //(Mechanical advantage)
printf("Mechanical advantage = %.2f\n",MA);

eta = MA/VR;                //(Efficiency)
printf("Efficiency = %.2f %%",eta * 100);
