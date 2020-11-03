//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//In triangle OBC:
OB = 4;      //(m)
BC = 5;      //(m)
theta = acosd(OB/BC);     //(Degrees)
printf("Direction in which he may run = %.2f degrees\n",theta);

OC = sqrt(BC^2 - OB^2);    //(m/s)
printf("Velocity with which he should enter = %.2f m/s",OC);
