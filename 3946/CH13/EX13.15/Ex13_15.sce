//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 12;       //(m)(Total length)
F1 = 10;      //(kN)(Force at D)
F2 = 20;      //(kN)(Force at F)
F3 = 10;      //(kN)(Force at G)
AC = 4;       //(m)
CE = 4;       //(m)
EG = 4;       //(m)
theta = 30;   //(degrees)(Angle at A)
alpha = 30;   //(degrees)(Angle at G)

//Taking moments about G and equating the same:
VA = [(F1 * AC) + (F2 * EG * cosd(alpha)) + (F1*(AC + CE)*cosd(alpha))]/l;    //(kN)

//Taking moments about the the joint C and equating the same:
PBD = (VA * AC)/2;       //(kN)(Compression)

//Taking moments about the joint D and equating the same:
PCE = (VA * 6)/(6 * tand(alpha));         //(kN)(Tension)

PCD = 0;

printf("Force in the member BD = %.2f kN(Compression)\n",PBD);    //(The answers vary due to round off error)
printf("Force in the member CE = %.2f kN(Tension)\n",PCE);    //(The answers vary due to round off error)
printf("Force in the member CD = %.2f kN",PCD);
