//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F1 = 8;     //(kN)(Force at B)
F2 = 12;    //(kN)(Force at D)
BD = 1.5;   //(m)
DC = 2;     //(m)
AD = 2;     //(m)
l = 4;      //(m)(Total length of base)

//Taking moments about A and equating the same:
VC = [(F1 * BD) + (F2 * AD)]/l;      //(kN)
VA = F2 - VC;                        //(kN)
HA = 8;                             //(kN)

//From geometry:
theta = atand(BD/AD);      //(Degrees)

//Solving by method of joints:
//Resolving the forces vertically and equating the same:
PAB = VA/sind(theta);      //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PAD = F1 + PAB * cosd(theta);       //(kN)(Tension)

//Considering joint C:
//Resolving the forces vertically and equating the same:
PBC = VC/sind(theta);           //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PCD = PBC * cosd(theta);       //(kN)(Tension)

PBD = 12;                     //(kN)(Tension)

printf("Force in the member AB = %.2f kN(Compression)\n",PAB);
printf("Force in the member AD = %.2f kN(Tension)\n",PAD);
printf("Force in the member BC = %.2f kN(Compression)\n",PBC);    //The answers vary due to round off error
printf("Force in the member CD = %.2f kN(Tension)\n",PCD);    //The answers vary due to round off error
printf("Force in the member BD = %.2f kN(Tension)",PBD);
