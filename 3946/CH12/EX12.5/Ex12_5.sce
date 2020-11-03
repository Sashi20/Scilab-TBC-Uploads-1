//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 3;         //(m)(Span)
//Let RA = Reaction at A,
//RB = Reaction at B.
//Anticlockwise moment due to RB and load at C about A:
//M1 = RB * l + (1 * 1.5) = 3*RB + 1.5    (kN-m)  -(1)
CA = 1.5;     //(m)(Distance between C and A)
AE = 2;       //(m)(Distance between A and E)
AB = 3;       //(m)(Distance between A and B)
BD = 1;       //(m)(Distance between B and D)
FAE = 2;      //(kN/m)(Force per meter between A and E)
FE = 3;       //(kN)(Force at E)
FBD = 2;      //(kN/m)(Force per meter between B and D)
FC = 1;       //(kN)(Force at C)

//Sum of clockwise moments due to loads about A:
M2 = (FAE * AE)*1 + (FE * AE) + (FC * BD)*3.5;  //(kN-m)   -(2)

//Equating (1) and (2):
RB = (M2 - CA)/l;                        //(kN)
RA = FC + (FAE * AE) + FE + (1 * BD) - RB;       //(kN)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at B = %.2f kN",RB);
