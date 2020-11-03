//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F1 = 2;      //(kN)(Force at B)
F2 = 4;      //(kN)(Force at C)
AD = 6;      //(m)
AE = 3;      //(m)
ED = 3;      //(m)
theta = 60;  //(degrees)(Angles at the base of the triangles)

//Taking moments about A and equating the same:
RD = [(F1 * AE/2) + (F2 * (AE + ED/2))]/AD;     //(kN)
RA = (F1 + F2) - RD;                 //(kN)

//Method of joints:
//Resolving the forces vertically and equating the same:
PAB = RA/sind(theta);    //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PAE = PAB * cosd(theta);    //(kN)(Tension)

//Resolving the forces vertically and equating the same:
PCD = RD/sind(theta);      //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PDE = PCD * cosd(theta);     //(kN)(Tension)

//Resolve the forces vertically and equating the same:
PBE = [PAB*sind(theta) - PDE]/sind(theta);     //(kN)(Tension)

//Resolving the forces horizontally and equating the same:
PBC = PAB*cosd(theta) + PBE*cosd(theta);      //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PCE = (F2 - PCD*sind(theta))/sind(theta);     //(kN)(Compression)

printf("Force in the member AB = %.2f kN(Compression)\n",PAB);
printf("Force in the member AE = %.2f kN(Tension)\n",PAE);
printf("Force in the member CD = %.2f kN(Compression)\n",PCD);
printf("Force in the member DE = %.2f kN(Tension)\n",PDE);
printf("Force in the member BE = %.2f kN(Tension)\n",PBE);
printf("Force in the member BC = %.2f kN(Compression)\n",PBC);
printf("Force in the member CE = %.2f kN(Compression)",PCE);
//The answers vary due to round off error
