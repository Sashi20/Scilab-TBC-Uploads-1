//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 9;        //(m)(Span)
//Let RA = Reaction at A,
//RB = Reaction ata B.

FC = 1;    //(kN)(Force at C)
FD = 2;    //(kN)(Force at D)
FE = 1;    //(kN)(Force at E)
FF = 2;    //(kN)(Force at F)
FG = 5;    //(kN)(Force at G)

AC = 2.25;   //(m)(Perpendicular distance between A and the lines of action of the loads at C)
AD = 4.5;    //(m)(Perpendicular distance between A and the lines of action of the loads at D)
AE = 6.75;   //(m)(Perpendicular distance between A and the lines of action of the loads at CE)
d = 3;       //(m)(Distance between the forces at the base)
//Equating the anticlockwise and clockwise moments about A:
RB = [(FC * AC) + (FD * AD) + (FE * AE) + (FF * d) + (FG * 2*d)]/9;        //(kN)
RA = (FC+FD+FE+FF+FG) - RB;     //(kN)

printf("Reaction at A = %.2f kN\n",RA);
printf("Reaction at B = %.2f kN",RB);
