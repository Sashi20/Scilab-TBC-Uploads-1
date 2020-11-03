//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 4.5;          //(m)(Span)
//Let RA = Reaction at A.
//RB = Reaction at B.
//Anticlockwise moment due to RB about A:
//M1 = RB * l = 4.5 * RB;     (kN-m)    -(1)
FA = 1;    //(kN/m)(Force per meter on side A)
FB = 2;    //(kN/m)(Force per meter on side B)

//Sum of clockwise moments due to uniformly varying load about A:
x = 2.25;    //(m)
M2 = (FA * l * x) + (x * 3);    //(kN-m)    -(2)

//Equating (1) and (2):
RB = M2/l;       //(kN)
RA = (FA * l) + (l * 1/2) - RB;    //(kN)
printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at B = %.2f kN",RB);
