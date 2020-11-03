//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 4;         //(m)(Span)
//Let RA = Reaction at A,
//RC = Reaction at C.
FB = 8;        //(kN)(Force at B)
FD = 12;       //(kN)(Force at D)
h = 1.5;       //(m)(Height of the triangle formed)
d = l/2;
//Taking moments about A and equating the same:
RC = [(FB * h) + (FD * d)]/4;      //(kN)

//Vertical component of reaction RA:
VA = FD - RC;       //(kN)

//Horizontal reaction at the left hand support A:
HA = 8;           //(kN)

//Reaction at A:
RA = sqrt(HA^2 + VA^2);     //(kN)

//Angle which the reaction RA makes with the vertical:
theta = atand(HA/VA);           //(Degrees)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at C = %.2f kN\n",RC);
printf("Angle which the reaction RA makes with the vertical = %.2f degrees",theta);
