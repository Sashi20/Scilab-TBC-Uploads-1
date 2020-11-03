//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
OA = 6;     //(km.p.h.)(East)
AB = OA;    //(km)
CA = 6;     //(km)
theta = atand(CA/AB);    //(Degrees)
printf("Actual direction = %.2f degrees\n",theta);

//In triangle OAC:
CO = CA/sind(theta);      //(km.p.h)
printf("Actual velocity = %.2f km.p.h",CO);
