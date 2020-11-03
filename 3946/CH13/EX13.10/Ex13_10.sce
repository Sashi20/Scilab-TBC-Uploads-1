//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
FB = 3;           //(kN)(Force at B)
FC = 4;           //(kN)(Force at C)
FD = 2;           //(kN)(Force at D)

AB = 2;     //(m)
BC = 4;     //(m)
CD = 4;     //(m)
AE = 4;     //(m)
AP = 8;     //(m)
PG = 2;     //(m)
AD = 10;    //(m)
CP = 2;     //(m)
PO = 8;     //(m)
PD = 2;     //(m)

//Triangles OPG and OAE similar:
AO = (AP * AE)/PG;       //(m)
DO = AO - AD;     //(m)
OC = 10;          //(m)

//In triangle CGP:
GCP = atand(PG/CP);        //(Degrees)
COR = 90 - GCP;           //(Degrees)
OR = OC*cosd(COR);        //(m)

//Geometry in the triangle OCQ:
GOP = atand(PG/PO);        //(Degrees)

//In triangle OCQ:
CQ = OC*sind(GOP);        //(m)

//Taking moments of the forces acting on right part of the frame only, about the joint G and equating the same:
PCD = (FD * PD)/CP;        //(kN)(Tension)

//Taking moments of the forces acting in the right part of the truss only about the imaginary joint O and equating the same:
PCG = (FD * DO)/OR;     //(kN)(Tension)

//Taking moments of the forces acting in the right part of the truss only about the joint C and equating the same:
PFG = (FD * CD)/CQ;      //(kN)(Compression)

printf("Force in the member CD = %.2f kN(Tension)\n",PCD);
printf("Force in the member CG = %.2f kN(Tension)\n",PCG);
printf("Force in the member FG = %.2f kN(Compression)",PFG);
