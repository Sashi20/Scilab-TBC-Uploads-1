//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 45;           //(m)(Span)
yc = 2;           //(m)(Depth of the lowest point from support A)
d = 8 - 2;        //(m)(Difference between the levels of the supports)
w = 20;           //(kN/m)(Uniformly distributed load over the span)

//(a) Length of the cable:
//Let l1 = Horizontal length of the CB,
//l2 = Horizontal length of AC.

//l1/l2 = 2;

//l1 = 2*l2;          -(1)
//l1 + l2 = 45;       -(2)

//From (1) and (2):
l2 = 45/3;      //(m)
l1 = 2*l2;      //(m)

//Length of the cable:
L = l + (2*(yc + d)^2)/(3*l1) + 2*yc^2/(3*l2);   //(m)
printf("Length of the cable = %.2f m\n",L);

//(b) Horizontal component of tension in the cable:
H = (w*l1^2)/(2*(yc + d));      //(kN)
printf("Horizontal component of tension in the cable = %.2f kN\n",H);

//(c) Magnitude and position of maximum tension occuring in the cable:
//Maximum tension will occur at the support B:
VB = (w*l)/2 + (H*d)/l;         //(kN)

//Maximum tension:
Tmax = sqrt(VB^2 + H^2);        //(kN)
printf("Magnitude and position of maximum tension occuring in the cable = %.2f kN",Tmax);
