//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 120;           //(m)(Span)
d = 3;             //(m)(Difference between the levels of supports)
w = 5;             //(kN/m)(Uniformly distributed load)
yc = 5 - 3;        //(m)(Sag of the cable)

//Let l1 = Horizontal length of AC,
//l2 = Horizontal length of CB.

//l1/l2 = sqrt((yc + d)/yc) = 1.58;
//l1 = 1.58*l2;         -(1)

//l1 + l2 = 120;        -(2)

//From (1) and (2):
l2 = 120/2.58;          //(m)
l1 = 120 - l2;          //(m)

//Horizontal thrust in the cable:
H = (w*l1^2)/(2*(yc + d));       //(kN)
printf("Horizontal thrust in the cable = %.2f kN\n",H);        //(Answer rounded off in book)

//Maximum tension in the cable:
//Vertical reaction at A:
VA = (w*l)/2 + (H*d)/l;           //(kN)

Tmax = sqrt(VA^2 + H^2);        //(kN)(Maximum tension in the cable)
printf("Maximum tension in the cable = %.2f kN",Tmax);        //The answers vary due to round off error
