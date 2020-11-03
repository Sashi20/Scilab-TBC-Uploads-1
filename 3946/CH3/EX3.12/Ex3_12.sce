//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
VF = 200;       //(N)(Vertical force at C)
HF = 300;       //(N)(Horizontal force at C)

AB = 10;        //(cm)
BC = 12;        //(cm)

alpha = 30;     //(degrees)
beta = 40;      //(degrees)
phi = 60;       //(degrees)
//Magnitude of the force(P):
//Taking moments about the hinge B and equating the same:
//P * 10*sind(60) = 200 * 12*cosd(30) + 300 * 12*cosd(60);
P = (VF * BC*cosd(alpha) + HF * BC*cosd(phi))/(AB*sind(phi));            //(N)
printf("Magnitude of the force = %.2f N\n",P);

//Magnitude of the reaction at B:

//Resolving the forces horizontally:
H = HF + P*cosd(20);           //(N)

//Resolving the forces vertically:
V = VF - P*sind(20);           //(N)

Reaction = (H^2 + V^2)^(1/2);          //(N)
printf("Magnitude of reaction at B = %.2f N\n",Reaction);

//Direction of reaction at B:
theta = atand(V/H);           //(degrees)

//SInce both the values of H and V are positive, therefore resultant lies between 0 degrees and 90 degrees:

printf("Direction of reaction at B = %.2f degrees",theta);
