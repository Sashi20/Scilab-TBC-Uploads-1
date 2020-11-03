//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 6;        //(m)(Span)
//Let RA = Reaction at A
//RB = Reaction at B
//Anticlockwise moment due to the reaction RB about A:
//M1 = RB * l = 6 * RB;     (kN-m)    -(1)

FC = 4;    //(kN)(Force at C)
FD = 1.5;  //(kN)(Force at D)
F = 2;     //(kN/m)(Force per meter between C and E)
d = 1.5;   //(m)(Distance between the partitions)

//Sum of clockwise moments about A:
M2 = (FC * d) + (F * d)*d*d + (FD * 3*d);    //(kN-m)   -(2)

//Equating (1) and (2):
RB = M2/6;      //(kN)
RA = FC + (F * d) + FD - RB;      //(kN)
printf("Reaction at RA = %.2f kN\n",RA);
printf("Reaction at RB = %.2f kN",RB);
