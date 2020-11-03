//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
AB = 3;     //(m)
BC = 3;     //(m)
FE = BC;    //(m)
CE = 4;     //(m)
ED = 3;     //(m)
F1 = 5;     //(kN)(Force at F)
F2 = 2;     //(kN)(Force at E)
theta = 45; //(degrees)(Angle at D)

//Let RA = Reaction at A,
//RD = Reaction at D.

//Horizontal component of reaction at D:
//RDH = RDV = 0.707*RD;

//Now, taking moments about A and equating the same:
//RDV*9 - RDH*4 = (5 * 3) + (2 * 6)
RD = (F1 * FE + F2 * (FE + ED))/((9 - 4)*cosd(theta));       //(kN)

RDH = cosd(theta)*RD;
RDV = cosd(theta)*RD;

//Vertical component of reaction at A:
RAV = (F1 + F2) - cosd(theta)*RD;     //(kN)

//Horizontal component of reaction at A:
RAH = RDH;

RA = sqrt(RAV^2 + RAH^2);     //(kN)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at D = %.2f kN",RD);
