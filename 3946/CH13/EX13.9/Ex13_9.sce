//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FE = 5;    //(kN)(Force at E)
x = 2;     //(m)(Distance between the horizontal partitions)
y = 4;     //(m)(Distance between the vertical partitions)

//Taking moments about the joint D and equating the same:
PCE = (FE * y)/x;         //(kN)(Tension)

//Taking moments about the joint B and equating the same:
PCD = [(FE*2*y) - (PCE*2)]/y;      //(kN)(Compression)

//Taking moments about the joint C and equating the same:
PBD = (FE * y)/x;         //(kN)(Tension)

printf("Force in the member CE = %.2f kN(Tension)\n",PCE);
printf("Force in the member CD = %.2f kN(Compression)\n",PCD);
printf("Force in the member BD = %.2f kN(Tension)",PBD);
