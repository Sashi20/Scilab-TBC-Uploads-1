//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 9;      //(m)(Span)
DC = 3;     //(m)
CA = 3;     //(m)
AE = 3;     //(m)
EF = 3;     //(m)
FB = 3;     //(m)
P1 = 3;     //(kN)(Force at D)
P2 = 12;    //(kN)(Force at E)
P3 = 9;     //(kN)(Force at F)
alpha = 30; //(degrees)(Angle at 12 kN)
beta = 30; //(degrees)(Angle at B)
//Let RA = Reaction at A,
//RB = Reaction at B.

//Resolving the 12 kN load at E vertically:
EV = P2 * sind(alpha);         //(kN)

//Resolving it horizontally:
EH = P2 * cosd(alpha);         //(kN)

//Vertical component of reaction RB:
// VRB = RB*cosd(30) = 0.866*RB;

//Anticlockwise moment due to vertical component of reaction RB about A:
//M1 = 0.866*RB * 9 = 7.794*RB;      -(1)

//Sum of clockwise moments due to loads about A:
M2 = (EV * AE) + (P3 * (AE + EF)) + (P1 * DC);    //(kN-m)    -(2)

//Equating (1) and (2):
RB = M2/(cosd(alpha)*P3);     //(kN)

//Vertical component of reaction RB:
VRB = RB*cosd(beta);         //(kN)

//Horizontal component of reaction RB:
HRB = RB*sind(beta);         //(kN)

//Vertical component of reaction RA:
VRA = (EV + VRB) - P3;         //(kN)

//Horizontal component of reaction RA:
HRA = (P1 + EH) - HRB;    //(kN)

RA = sqrt(HRA^2 + VRA^2);  //(kN)

//Angle which the reaction at A makes with the vertical:
theta = atand(HRA/VRA);       //(Degrees)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at B = %.2f kN\n",RB);    //The answers vary due to round off error
printf("Angle which the reaction at A makes with the vertical = %.2f degrees",theta);    //(The answers vary due to round off error)
