//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 600;     //(mm)(Distance between the centres of the two shafts)
N1 = 120;    //(r.p.m.)(Speed of the first shafts)
p = 25;      //(mm)(Pitch of the wheel)

//Let d1 = Diameter of the first wheel,
//T1 = No. of teeth on the first wheel,
//d2, T2 = Corresponding values for the follower.

//Distance between the shafts:
//600 = (1/2)*(d1 + d2)
//(d1 + d2) = 1200        -(i)

//d1/d2 = N2/N1
//d1 = 3*d2               -(ii)

//From (i) and (ii):
d2 = 300;     //(mm)
d1 = 3*d2;    //(mm)

//No. of teeth on the first wheel:
T1 = ceil((%pi * d1)/p);
T2 = ceil((%pi * d2)/p);

//Exact diameter of first wheel:
d1_dash = (T1 * p)/%pi;     //(mm)
d2_dash = (T2 * p)/%pi;     //(mm)

//Exact distance between the two shafts:
l_dash = (1/2)*(d1_dash + d2_dash);    //(mm)

printf("No. of teeth of the first wheel = %.2f\n",T1);
printf("Diameter of first wheel = %.2f mm\n\n",d1_dash);
printf("No. of teeth of the second wheel = %.2f\n",T2);
printf("Diameter of second wheel = %.2f mm\n\n",d2_dash);
printf("Exact distance between the two shafts = %.2f mm",l_dash);
//(The answers vary due to round off error)
