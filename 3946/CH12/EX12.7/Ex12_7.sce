//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//Solving by analytical method
l = 6;        //(m)(Span)
AC = 2;       //(m)
CD = 2;       //(m)
DB = 2;       //(m)
F1 = 5;       //(kN)(Force at C)
F2 = 4;       //(kN)(Force at D)
F3 = 1.5;     //(kN/m)(Force per metre between C and D)
alpha = 135;  //(degrees)(Angle made at BD bt 4 kN force)
//Let RA = Reaction at A,
//RB = Reaction at B.
//Resolving the 4 kN load at D vertically:
RD = F2 * sind(180 - alpha);      //(kN)

//Resolving it horizontally:
RH = F2 * cosd(180 - alpha);      //(kN)

//Anticlockwise moment due to RB about A:
//M1 = RB * 6 = 6 * RB;      //(kN-m)   -(1)

//Sum of clockwise moments due to loads about A:
M2 = (F1 * AC) + (F3 * AC)*3 + RD*(AC + CD);    //(kN-m)   -(2)

//Equating (1) and (2):
RB = M2/l;       //(kN)

//Vertical component of the reaction RA:
VRA = F1 + (F3 * AC) + RD - RB;      //(kN)

RA = sqrt(VRA^2 + RH^2);    //(kN)

theta = atand(RH/VRA);          //(Degrees)(Angle which the reaction at A makes with vertical)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at B = %.2f kN\n",RB);
printf("Angle which the reaction at A makes with vertical = %.2f degrees",theta);    //The answers vary due to round off error
