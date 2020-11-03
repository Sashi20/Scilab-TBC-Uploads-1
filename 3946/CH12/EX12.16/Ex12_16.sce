//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 6.92;       //(m)
FR = 1;         //(kN)(Force at R)
FS = 2;         //(kN)(Force at S)
FQ = 1;         //(kN)(Force at Q)
d = 3;          //(m)(Distance between adjacent forces)
alpha = 60;     //(degrees)

//Let RP = Reaction at P,
//RQ = Reaction at Q.

//Taking moments about Q and equating the same:
RP = [(FS * d) + (FQ * 2*d)]/l;     //(kN)

W = FR + FS + FQ;     //(kN)(Total wind load)

//Horizontal component of total wind load:
HW = W*cosd(alpha);    //(kN)

//Vertical component of total wind load:
VW = W*sind(alpha);    //(kN)

//Balance vertical reaction at Q:
VQ = VW - RP;      //(kN)

//Reaction at Q:
RQ = sqrt(HW^2 + VQ^2);     //(kN)

//Angle which the reaction RQ makes with the vertical:
theta = atand(HW/VQ);          //(Degrees)

printf("Reaction at P = %.2f kN\n",RP);
printf("Reaction at Q = %.2f kN\n",RQ);
printf("Angle which the reaction RQ makes with the vertical = %.2f degrees",theta);
