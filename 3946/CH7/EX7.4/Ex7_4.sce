//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
D = 80;             //(mm)(External diameter)
d = 60;             //(mm)(Internal diameter)
Ixx = (%pi/64)*(D^4 - d^4);           //(mm^4)
printf("Moment of Inertia = %.2f mm^4",Ixx);    //The answers vary due to round off error
