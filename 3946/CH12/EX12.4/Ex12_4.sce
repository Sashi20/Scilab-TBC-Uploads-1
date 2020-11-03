//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 6;        //(m)(Span)
//Let RA = Reaction at A;
//RB = Reaction at B.
//Anticlockwise moment due to RB about A:
//M1 = l * RB = 6 * RB;        //(kN-m)    -(1)
FC = 4;    //(kN)(Force at C)
FD = 4;    //(kN)(Force at D)
FCD = 2;     //(kN/m)(Force per metre between C and D)
FB = 2;      //(kN/m)(Force per meter along B)

d1 = 1;    //(m)(Distance between the small partitions)
d2 = 3;    //(m)(Distance between the big partition)

//Sum of clockwise moments due to loads about A:
M2 = (FC * d1) + (FCD * d1)*1.5 + (FD * 2*d1) + FB/2*d2*5;  //(kN-m)    -(2)

//Equating (1) and (2):
RB = M2/l;                    //(kN)
RA = (FC + FCD + FD + 3) - RB;     //(kN)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at B = %.2f kN",RB);
