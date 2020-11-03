//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
b = 80;        //(mm)(Base width)
h = 60;        //(mm)(Height)

//Moment of inertia about the centre of gravity:
Ig = (b*h^3)/36;         //(mm^4)

//Moment of inertia about the base BC:
Ibc = (b*h^3)/12;        //(mm^4)

printf("Moment of inertia about the centre of gravity = %.2f mm^4\n",Ig);
printf("Moment of inertia about the base BC = %.2f mm^4",Ibc);
