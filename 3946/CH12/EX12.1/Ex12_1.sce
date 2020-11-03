//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 5;            //(m)(Span)
F1 = 3;           //(kN)(Force at 2 m from A)
F2 = 4;           //(kN)(Force at 3 m from A)
F3 = 5;           //(kN)(Force at 4 m from A)
x = 2;            //(m)(Distance from A to 3 kN force)
y = 3;            //(m)(Distance from A to 4 kN force)
z = 4;            //(m)(Distance from A to 5 kN force)
l = 5;            //(m)(Total length)
//Let RA = Reation at A,
//RB = Reaction at B

//Anticlockwise moment due to RB about A
// M1 = l * RB = 5 * RB;       //(kN-m)      -(1)

//Sum of the clockwise moments about A:
M2 = (F1 * x) + (F2 * y) + (F3 * z);     //(kN-m)   -(2)

//Equating (1) and (2):
RB = M2/l;                    //(kN)
RA = (F1 + F2 + F3) - RB;       //(kN)
printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at B = %.2f kN",RB);
