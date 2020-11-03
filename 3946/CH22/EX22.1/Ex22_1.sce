//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
A = 60;     //(Degrees)(Inclination of the link with the horizontal)
vA = 2;     //(m/s)(Velocity of point A in horizontal direction)

//Let vB = Velocity of B in the vertical direction.
//vB/vA = cotd(60);
vB = vA * cotd(60);      //(m/s)
printf("Velocity of B in the vertical direction = %.2f m/s",vB);
