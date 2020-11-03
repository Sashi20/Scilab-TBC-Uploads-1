//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
AG = 1.5;     //(m)
GF = 1.5;     //(m)
FE = 1.5;     //(m)
ED = 1.5;     //(m)
FB = 1000;    //(N)(Force at B)
FC = 1000;    //(N)(Force at C)
FD = 500;     //(N)(Force at D)

//From geometry:
CDE = atand(AG/(GF + FE + ED));    //(Degrees)

//Resolving the forces vertically at D:
PCD = FD/sind(CDE);     //(N)(Tension)

//Resoving the forces horizontally at D:
PDE = PCD*cosd(CDE);     //(N)(Compression)

//Resolving the forces horizontally and equating the same:
//PBC = 1584 + PFC;           -(1)

//Resolving the forces vertically and equating the same:
//1000 + 1584*sind(18.4) = PFC*sind(18.4) + PBC*sind(18.4);
PFC = FC/(2*sind(CDE));       //(N)(Compression)

//Substituting the value of PFC in equation (1):
PBC = PCD + PFC;        //(N)(Tension)

//Resolving the forces horizontally:
PGF = PCD + PCD*cosd(CDE);     //(N)(Compression)

//Resolving the forces vertically and equating the same:
PBF = PCD*sind(CDE);           //(N)(Tension)

//From geometry:
GBF = atand(GF/1);             //(Degrees)

//Resolving the forces horizontally at B and equating the same:
//0.3156*PAB = 0.2773*PBG + 1000;     -(2)

//Resolving the forces vertically at B and equating the same:
//0.3156*PAB + 0.5548*PBG = 2500;     -(3)
//(3)-(2):
PBG = 1500/0.8321;          //(N)(Compression)

//Substituting PBG in (2):
PAB = 1500/0.3156;         //(N)(Tension)

PCE = 0;
PFE = PDE;

printf("Force in the member AB = %.2f kN(Tension)\n",PAB);
printf("Force in the member BC = %.2f kN(Tension)\n",PBC);
printf("Force in the member CD = %.2f kN(Tension)\n",PCD);
printf("Force in the member DE = %.2f kN(Compression)\n",PDE);
printf("Force in the member CE = %.2f kN\n",PCE);
printf("Force in the member FE = %.2f kN(Compression)\n",PFE);
printf("Force in the member FC = %.2f kN(Compression)\n",PFC);
printf("Force in the member BF = %.2f kN(Tension)\n",PBF);
printf("Force in the member GF = %.2f kN(Compression)\n",PGF);
printf("Force in the member BG = %.2f kN(Compression)",PBG);
//The answers vary due to round off errors
