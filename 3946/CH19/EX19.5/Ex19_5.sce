//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v1 = 32;       //(km.p.h.)(Velocity of first ship)
v2 = 24;       //(km.p.ph.)(Velocity of second ship)
theta = 40 + 45;    //(degrees)(Total angle)
//(a)
//In parallelogram OBRC:
OR = sqrt(v1^2 + v2^2 + 2*v1*v2*cosd(180 - theta));   //(km.p.h.)
printf("Velocity of the second ship relative to the first = %.2f km.p.h.\n",OR);    //The answers vary due to round off error

//(b)
d = 160;          //(km)(Distance between the ships)
t = d/OR;      //(hrs)(Time when the two ships will be 160 km apart)
printf("Time when the two ships will be 160 km apart = %.2f hrs",t);
