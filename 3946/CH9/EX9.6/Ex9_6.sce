//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//Solving by analytical method
W = 1500;    //(N)(Weight of the block)
alpha = 10;  //(Degrees)(Angle of the wedge)
mu = 0.3;     //(Coefficient of friction between all the four surfaces of contact)
phi = atand(mu);    //(Degrees)

//Let P = Minimum horizontal force required to raise the block.

//Considering the equilibrium of the block:
//Resolving the forces horizontally:
//R2 = 2.132*R1

//Resolving the forces vertically:
alpha = 16.7;     //(degrees)
theta = 26.7;     //(degrees)
R1 = W/((cosd(alpha)/sind(theta))*cosd(theta) - sind(alpha));      //(N)
R2 = (cosd(alpha)/sind(theta)) * R1;                 //(N)

//Considering the equilibrium of the wedge:
//Resolving the forces vertically:
R3 = (R2 * cosd(theta))/cosd(alpha);    //(N)

//Resolving the forces horizontally:
P = R2 * sind(theta) + R3 * sind(alpha);    //(N)
printf("Minimum horizontal force required to raise the block = %.2f N",P);    //The answers vary due to round off error
