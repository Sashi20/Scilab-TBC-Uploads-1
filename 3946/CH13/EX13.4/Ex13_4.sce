//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FB = 8;     //(kN)(Force at B)
FG = 6;     //(kN)(Force at G)
FF = 12;    //(kN)(Force at F)
AB = 1.5;   //(m)
d = 2;      //(m)(Distance between the partitions)
alpha = 60;   //(Degrees)(Angles at A and E)
theta = 30;   //(Degrees)(Angles at partitions)

//Taking moments about A and equating the same:
RE = [(FB * AB) + (FG * d) + (FF * 2*d)]/(3*d);      //(kN)
RA = (FB + FG + FF) - RE;                       //(kN)

//Taking moments about the joint G and equating the same:
PBC = [(RA * d) - (FB * 0.5)]/(d*sind(theta));    //(kN)(Compression)

//Taking moments about the joint B and equating the same:
PGC = [(RA * AB) + (FG * 0.5)]/((d/2)*cosd(theta));     //(kN)(Compression)

//Taking moments about the joint C and equating the same:
PGF = [(RA * 2*AB) - (FG * (d/2))]/((d + d/2)*tand(theta));     //(kN)(Tension)

printf("Force in the member BC = %.2f kN(Compression)\n",PBC);
printf("Force in the member GC = %.2f kN(Compression)\n",PGC);
printf("Force in the member GF = %.2f kN(Tension)",PGF);    //THe answers vary due to round off error
