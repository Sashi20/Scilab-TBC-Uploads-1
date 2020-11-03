//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

F1 = 35;        //(N)
F2 = 30;        //(N)
F3 = 25;        //(N)
F4 = 20;        //(N)

alpha = 30;     //(degrees)
theta = 45;     //(degrees)
beta = 40;      //(degrees)

//Resolving the forces horizontally:
H = F4*cosd(alpha) + F3*cosd(90) + F2*cosd(180-theta) + F1*cosd(180+beta);             //(N)

//Resolving the forces vertically:
V = F4*sind(alpha) + F3*sind(90) + F2*sind(180-theta) + F1*sind(180+beta);        //(N)

Resultant = (H^2 + V^2)^(1/2);
printf("Resultant force = %.2f N\n",Resultant);

//Let theta = angle of resultant with horizontal;
//tan(theta) = V/H;
theta = atand(abs(V/H));

//Since H is negative and V positive, therefore the resultant lies between 90 degrees and 180 degrees.

Angle = 180 - theta;
printf("Angle of resultant = %.2f degrees",Angle);
