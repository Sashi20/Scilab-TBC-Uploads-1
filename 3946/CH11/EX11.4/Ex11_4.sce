//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 6;               //(N)(Effort)
W = 60;              //(N)(Load raised)
n = 0.8;             //(Efficiency)
D = 300;             //(mm)(Diameter of effort wheel)
d = 280;             //(mm)(Sum of the diameters of axles)

//Velocity ratio of the machine:
MA = W/P;            //(Mechanical advantage)
//0.8 = MA/VR = 10/VR;
VR = MA/n;           //(Velocity ratio)
printf("Velocity ratio = %.2f\n",VR);

//Difference between the diameters of the axles:
//Let d = d1 - d2;
d = (2 * D)/VR;               //(mm)
printf("Difference between the diameters of the axles = %.2f mm\n",d);

//Diameter of each axle:
//Solving d1 - d2 = 48 and d1 + d2 = 280;
d1 = 164;        //(mm)
d2 = 116;        //(mm)
printf("d1 = %.2f mm\n",d1);
printf("d2 = %.2f mm",d2);
