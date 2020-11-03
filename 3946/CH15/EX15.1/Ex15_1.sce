//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
AB = 12;        //(m)(Span)
FC = 10;        //(kN)(Force at C)
FD = 15;        //(kN)(Force at D)
FE = 20;        //(kN)(Force at E)
x = 3;          //(m)(Distance between line AB and point D)
y = 3;          //(m)(Distance between each point division)
//(i) Vertical reactions at A and B:
//Taking moments about A and equating the same:
VB = [(FC * y) + (FD * 2*y) + (FE * 3*y)]/AB;      //(kN)
VA = (FC + FD + FE) - VB;                      //(kN)

printf("Vertical reaction at A = %.2f kN\n",VA);
printf("Vertical reaction at B = %.2f kN\n",VB);

//(ii)Horizontal thrusts at A and B:
//Taking moments of the forces acting in the string ACD about D and equating the same:
H = [(FE * 2*y) - (FC * y)]/y;           //(kN)
printf("Horizontal thrust at A and B = %.2f kN\n",H);

//(iii)Sag of points C and E:
//Taking moments of the forces acting in the string AC about C and equating the same:
yC = (FE * y)/H;     //(m)Sag of point of C)

//Taking moments of the forces acting in the string EB about E and equating the same:
yE = (VB * y)/H;     //(m)(Sag of point of E)

printf("Sag of point of C = %.2f m\n",yC);
printf("Sag of point of E = %.2f m\n",yE);

//(iv)Tensions in all the segments of the string:
//Vector diagram is drawn and following measurements are found out from it.
TAC = 36;        //(kN)(Tension in AC)
TCD = 31.6;      //(kN)(Tension in CD)
TDE = 30.4;      //(kN)(Tension in DE)
TEB = 39.1;      //(kN)(Tension in EB)

printf("Tension in AC = %.2f kN\n",TAC);
printf("Tension in CD = %.2f kN\n",TCD);
printf("Tension in DE = %.2f kN\n",TDE);
printf("Tension in EB = %.2f kN",TEB);
