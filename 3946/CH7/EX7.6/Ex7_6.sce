//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
B = 180;        //(mm)(Base width of main triangle)
b = 120;        //(mm)(Base width of cut out triangle)
H = 100;        //(mm)(Height of main triangle)
h = 60;         //(mm)(Height of cut out triangle)

//Moment of Inertia of the triangular section about the base BC:
Ibc = (B*H^3)/12 - (b*h^3)/12;       //(mm^4)
printf("Moment of Inertia of the triangular section about the base BC = %.2f mm^4",Ibc);
