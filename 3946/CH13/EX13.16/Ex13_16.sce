//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
AB = 3;     //(m)
BC = 3;     //(m)
CE = 4;     //(m)
BF = 4;    //(m)
FF = 5;    //(kN)(Force at F)
FE = 2;    //(kN)(Force at E)
alpha = 45;    //(degrees)(Angle at D)

//Taking moments about A and equating the same:
//RDV = RDH
RDH = [(FF * AB) + (FE * (AB+BC))]/5;    //(kN)
RDV = RDH;                      //(kN)

//Taking moments about the joint F and equating the same:
PBC = [(RDV * 2*BC) - (FE * BC)]/BF;    //(kN)(Compression)

//Taking moment about the joint C and equating the same:
PFE = [(RDV * BF) - (RDV * BC)]/BF;      //(kN)(Compression)

//Taking moments about the joint B and equating the same:
PFC = [(PFE * BF) - (FE * BC) + (RDV * 2*BC) - (RDV * BF)]/2.4;         //(kN)(Tension)

printf("Force in the member BC = %.2f kN(Compression)\n",PBC);
printf("Force in the member FE = %.2f kN(Compression)\n",PFE);
printf("Force in the member FC = %.2f kN(Tension)",PFC);
