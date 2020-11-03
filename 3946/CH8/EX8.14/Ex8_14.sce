//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
WA = 1;               //(kN)(Weight of block A)
WB = 3;               //(kN)(Weight of block B)
alpha = 45;               //(degrees)(Angle of inclination of plane with horizontal)
theta = 30 - alpha;               //(degrees)
mu = tand(theta);          //(Coefficient of friction)
phi = 15;          //(degrees)(Angle of limiting friction)
T = WA * (sind(alpha + phi) / cosd(theta - phi));       //(kN)

beta = 30;     //(degrees)(Angle of 1kN force with horizontal)

F = 3;    //(N)(Force acting downwards)
//Resolving the forces horizontally:
RB = F + WA * sind(beta);           //(kN)
FB = WA*cosd(beta);                 //(kN)
//Resolving the forces horizontally:
P = WA * cosd(beta) + FB;         //(kN)
printf("Horizontal force(P) = %.2f kN",P);    //The answers vary due to round off error
