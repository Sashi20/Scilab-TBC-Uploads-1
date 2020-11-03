//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 60;       //(m)(Span)
yc = 3;       //(m)(Depth of the lowest point from the support B)
d = 12 - 3;   //(m)(Difference between the levels of the supports)

//Let l1 = Horizontal length AC,
//l2 = Horizontal length CB.

//l1/l2 = 2;
//l1 = 2*l2;       -(1)

//l1 + l2 = 100;   -(2)

//From (1) and (2):
l2 = l/3;        //(m)
l1 = 2*l2;        //(m)

//Length of the cable:
L = l + (2*(yc + d)^2)/(3*l1);     //(m)
printf("Length of the cable = %.2f m",L);    //The answers vary due to round off error
