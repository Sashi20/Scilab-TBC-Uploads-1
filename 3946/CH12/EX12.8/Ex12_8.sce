//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 8.5;    //(m)(Total length)
F1 = 5;     //(kN)(Force at C)
F2 = 4;     //(kN)(Force at D)
F3 = 5;     //(kN)(Force at E)
AC = 2;     //(m)
CD = 2;     //(m)
DE = 3;     //(m)
EB = 1.5;   //(m)
phi = 45; //(degrees)(Angle at 4 kN)
alpha = 30; //(degrees)(Angle at B)
//Resolving the 4 kN load at D vertically:
RDV = F2*sind(phi);        //(kN)

//Resolving it horizontally:
RDH = F2*cosd(phi);        //(kN)

//Vertical component of reaction RB:
//VRB = RB * cosd(30) = 0.866*RB;

//Anticlockwise moment due to vertical component of reaction RB about A:
//M1 = 0.866*RB*8.5 = 7.361 * RB;    -(1)

//Sum of the clockwise moments due to loads about A:
M2 = (F1 * AC) + (RDV * (AC + CD)) + (F3 * (AC + CD + DE));     //(kN-m)   -(2)

///Equating (1) and (2):
RB = M2/(cosd(alpha)*l);        //(kN)

//Vertical component of the reaction RB:
VRB = cosd(alpha) * RB;      //(kN)

//Horizontal component of reaction RB:
HRB = RB * sind(alpha);   //(kN)

//Vertical component of reaction RA:
VRA = (F1 + F2*cosd(phi) + F3) - VRB;     //(kN)

//Horizontal component of reaction RA:
HRA = HRB - RDV;              //(kN)

RA = sqrt(HRA^2 + VRA^2);      //(kN)

//Angle which the reaction at A makes with the vertical:
theta = atand(HRA/VRA);     //(Degrees)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at B = %.2f kN\n",RB);
printf("Angle which the reaction at A makes with the vertical = %.2f degrees",theta);
