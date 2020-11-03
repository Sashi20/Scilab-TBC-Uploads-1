//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 8;      //(m)(Total length)
F1 = 3;     //(kN)(Force at B)
F2 = 4;     //(kN)(Force at D)
d1 = 2;     //(m)(Distance between subsequent slots lower part)
d2 = 1.5;   //(m)(Distance between subsequent slots upper part)
//Taking moments about the joint A and equating the same:
RE = [(F1 * d1) + (F2 * d2 * 3)]/l;      //(kN)

//From geometry:
theta = atand(3/4);           //(Degrees)
alpha = atand(3*d2/d1);     //(Degrees)

//Resolving the forces horizontally and equating the same:
//PDE * cosd(66) = PHE * cosd(36.9)   -(1)

//Resolving the forces vertically and equating the same:
//PDE * sind(66) = PHE * sind(36.9) + 3    -(2)

//From (1) and (2):
PHE = F1/1.2;         //(kN)(Tension)
PDE = 1.97 * PHE;     //(kN)(Compression)

PDH = 0;             //(kN)(As there is no other member at joint H to balance the component of this force)

printf("Force in the member HE = %.2f kN(Tension)\n",PHE);
printf("Force in the member DE = %.2f kN(Compression)\n",PDE);
printf("Force in the member DH = %.2f kN",PDH);
