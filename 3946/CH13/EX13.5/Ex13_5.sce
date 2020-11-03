//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F1 = 10;    //(kN)(Force at top)
//Reaction against A:
RA = 5;     //(kN)
RB = 5;     //(kN)
alpha = 45;    //(degrees)

theta = atand(3/3);          //(Degrees)
alpha = atand(6/3);      //(Degrees)

//Resolving the forces horizontally and equating the same:
//PAC = PAD*cosd(45)/cosd(alpha) = 1.58*PAD;

//Resolving the forces vertically and equating the same:
//1.58*PAD * 0.8941 = 5 + PAD*0.707;
PAD = RA/0.7056;        //(kN)(Tension)
PAC = 1.58 * PAD;      //(kN)(Compression)
PBD = PAD;
//Resolving the forces vertically and equating the same:
PCD = PAD*sind(alpha) + PBD*sind(alpha);    //(kN)(Tension)

printf("Force in the member AD and DB = %.2f kN(Tension)\n",PAD);
printf("Force in the member AC and CB = %.2f kN(Compression)\n",PAC);    //The answers vary due to round off error
printf("Force in the member CD = %.2f kN(Tension)",PCD);    //The answers vary due to round off error
