//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F = 10;     //(kN)(Force acting at A)
FB = 7.5;   //(kN)(Force acting at B)
FC = 2.5;   //(kN)(Force acting at C)
alpha = 60; //(degrees)(Angle at B)
theta = 30; //(degrees)(Anlge at C)

//From geometry:
BC = 5;     //(m)
AB = 1.25;  //(m)
AC = 3.75;  //(m)

//Taking moments about B and equating the same:
RC = (F * AB)/BC;      //(kN)
RB = F - RC;           //(kN)

//Method of Joints:
//Resolving the forces vertically and equating the same:
PAB = RB/sind(alpha);      //(kN)(Compression)

//Resolving the forces horizontally and equating the same:
PBC = PAB * cosd(alpha);     //(kN)(Tension)

//Resolving the forces vertically and equating the same:
PAC = RC/sind(theta);     //(kN)(Compression)
printf("Method of joints :\n")
printf("Force in the member AB = %.2f kN(Compression)\n",PAB);
printf("Force in the member AC = %.2f kN(Compression)\n",PAC);
printf("Force in the member BC = %.2f kN(Tension)\n\n",PBC);

//Method of Sections

PAB = FB/sind(alpha);     //(kN)(Compression)
PBC = FB/tand(alpha);     //(kN)(Tension)
PAC = FC/sind(theta);     //(kN)(Compression)
printf("Method of sections :\n")
printf("Force in the member AB = %.2f kN(Compression)\n",PAB);
printf("Force in the member AC = %.2f kN(Compression)\n",PAC);
printf("Force in the member BC = %.2f kN(Tension)\n\n",PBC);
