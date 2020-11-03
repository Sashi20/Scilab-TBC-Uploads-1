//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

F1 = 60;       //(N)
F2 = 50;       //(N)
F3 = 40;       //(N)
F4 = 30;       //(N)
F5 = 20;       //(N)
alpha = 30;    //(degrees)(Angle between two adjacent forces)

//Resolving all the forces horizontally:
H = F5*cosd(0) + F4*cosd(alpha) + F3*cosd(2*alpha) + F2*cosd(3*alpha) + F1*cosd(4*alpha);

//Resolving all the forces vertically:
V = F5*sind(0) + F4*sind(alpha) + F3*sind(2*alpha) + F2*sind(3*alpha) + F1*sind(4*alpha);

Resultant = (H^2 + V^2)^(1/2);
printf("Resultant force = %.2f N\n",Resultant);

//Let theta = angle of resultant with horizontal
//tan(theta) = V/H;
theta = atand(abs(V/H));

//Since both H and V are positive, therefore actual angle of resultant lies between 0 and 90.
printf("Angle of resultant force = %.2f degrees",theta);
