//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F1 = 2;    //(kN)(Force at D)
AD = 1.2;  //(m)
DC = 0.9;  //(m)
alphaA = 30;     //(degrees)(Angle at A)
alphaDi = 60;    //(degrees)(Angle at D interior)
alphaDe = 45;    //(degrees)(Angle at D exterior)
//Taking moments about the joint A and equating the same:
P = (F1*cosd(alphaDe)*AD)/DC;        //(kN)
printf("Pull in the chain = %.2f kN\n",P);

//Force in each member:
//Horizontal reaction at A:
HA = P - (F1*cosd(alphaDe));          //(kN)

//Vertical reaction at A:
VA = F1*sind(alphaDe);                    //(kN)

//Considering joint A:
//Resolving the forces vertically and equating the same:
PAB = VA/sind(alphaA);               //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PAD = PAB*cosd(alphaA) - HA;          //(kN)(Tension)

//Considering joint D:
//Resolving the forces horizontally and equating the same:
PBD = (PAD - F1*cosd(alphaDe))/cosd(alphaDi);       //(kN)(Compression)

//Resolving the forces vertically and equating the same:
PCD = PBD*sind(alphaDi) + F1*sind(alphaDe);        //(kN)(Tension)

//From geometry:
BE = 0.3;      //(m)
CE = 0.38;     //(m)

theta = atand(BE/CE);
//Resolving the forces horizontally at C and equating the same:
PBC = P/sind(theta);       //(kN)(Compression)

printf("Force in the  member AB = %.2f kN(Compression)\n",PAB);
printf("Force in the  member AD = %.2f kN(Tension)\n",PAD);
printf("Force in the  member BD = %.2f kN(Compression)\n",PBD);
printf("Force in the  member CD = %.2f kN(Tension)\n",PCD);
printf("Force in the  member BC = %.2f kN(Compression)\n",PBC);
//The answers vary due to round off error
