//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 80;      //(m)(Span)
yc = 6;      //(m)(Central dip)

//Length of each cable:
L = l + ((8*yc^2)/(3*l));         //(m)
printf("Length of each cable = %.2f m",L);
