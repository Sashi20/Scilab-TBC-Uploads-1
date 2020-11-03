//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F = 15;     //(kN)(Force to be produced)
//Solving by method of section:
//Taking moments of the forces in the right part of the truss only, about the joint E and equating the same:
//PAB = [(W*1.5) + (W*4.5)]/2;
//The value of W which would produce the force of 15 kN in the member AB = W/3W * 15
//PAB = 3*W
x = 3;
W = F/x;      //(kN)
printf("The value of W which would produce the force of 15 kN in the member AB = %.2f kN",W);
