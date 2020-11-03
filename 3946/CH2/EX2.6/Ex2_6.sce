//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F1 = 50;       //(kN)
F2 = 25;       //(kN)
F3 = 35;       //(kN)
F4 = 20;       //(kN)

//Resolving forces horizontally:
H = F2 - F4;           //(kN)

//Resolving the forces vertically:
V = (-F1) + (-F3);     //(kN)

//Magnitude of resultant force:
Resultant = (H^2 + V^2)^(1/2);

printf("Resultant Force = %.2f kN\n",Resultant);

//Direction of resultant force:
//Let theta = angle of resultant with horizontal

//tan(theta) = V/H;
theta = atand(abs(V/H));

//Since H is positive and V is negative, therefore resultant lies between 270 degrees and 360 degrees.
//Actual angle of resultant force:
Angle = 360 - theta;
printf("Angle of Resultant force = %.2f degrees",Angle);      //The answers vary due to round off error
