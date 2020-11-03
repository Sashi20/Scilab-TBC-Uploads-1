//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//For pull of 180 N:
P1 = 180;      //(N)(Pull)
alpha = 30;   //(degrees)(Angle of pull)
//Resolving the forces horizontally:
F1 = P1*cosd(alpha);           //(N)

//Resolving the forces vertically:
//R1 = W - 180*sind(30)

//F1 = u*R1;
//155.9 = u*(W-90)              -(1)

//For push of 220 N:
P2 = 220;       //(N)(Push)
alpha = 30;    //(degrees)(Angle of push)
//Resolving the forces horizontally:
F2 = P2*cosd(alpha);          //(N)

//Resolving the forces vertically:
//R2 = W + 220*sind(30)

//F2 = u*R2;
//190.5 = u*(W + 110)          -(2)

//Eqn (1) / (2)
//Solving:
// (F2 - F1) * W - (110 * F1) - (90 * F2) = 0 
A = [(F2 - F1)];
c = [(-(110*F1)-(90*F2))];
[x,nsA] = linsolve(A,c);
W = x;
printf("Weight of the body = %.2f N\n",W); //The answers vary due to round off error

//Substituting W in (1):
mu = F1/(W - P1*sind(alpha));
printf("Coefficient of friction = %.2f",mu);


