//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//Considering the forces acting on block A:
//Resolving the forces vertically:

mu = 0.3;              //(Coefficient of friction)
alpha = 30;            //(degrees)
//T*sind(30) = 1 - R1;        -(1)

//Resolving the forces horizontally:

//T*cosd(30) = 0.3*R1;

//Eqn (1) / (2):
R1 = 1/(mu*tand(alpha) + 1);       //(kN)

F1 = mu*R1;                      //(kN)

//Considering block B:
//Resolving the forces vertically:
R2 = 2 + R1;                    //(kN)
F2 = mu*R2;                      //(kN)

//Resolving the forces horizontally:
P = F1 + F2;                   //(kN)
printf("Force required to move the block(P) = %.2f kN",P);
