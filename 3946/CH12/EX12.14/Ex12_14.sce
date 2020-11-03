//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 8;       //(m)(Span)
//Let RA = Reaction at A,
//RE = Reaction at E.

FB = 1;     //(kN)(Force at B)
FC = 1;     //(kN)(Force at C)
FD = 4;     //(kN)(Force at D)
x = 1.5;    //(m)(Distance between the horizontal strips)
y = 2;      //(m)(Distance between the vertical strips)

//Taking moments about A and equating the same:
RE = [(FB * y) + (FC * 2*y) + (FD * 3*x)]/8;    //(kN)

//Vertical component of reaction:
VA = RE - 2;       //(kN)

//Horizontal reaction at the left hand support:
HA = 4;           //(kN)

//Reaction at A:
RA = sqrt(HA^2 + VA^2);     //(kN)

//Angle which the reaction at A makes with the vertical:
theta = atand(HA/VA);           //(Degrees)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at E = %.2f kN\n",RE);
printf("Angle which the reaction at A makes with the vertical = %.2f degrees",theta);
