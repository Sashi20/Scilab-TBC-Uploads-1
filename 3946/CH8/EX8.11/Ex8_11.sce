//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//Solving by 1st method

W = 300;             //(N)(Load)
P1 = 60;             //(N)(Force)
theta = 30;              //(degrees)(Angle at which force is inclined)
//Let A = Angle of inclination of the plane
//Smooth plane:
mu = 0;
Phi = 0;               //(degrees)

//Resolving the forces:
alpha = asind(P1*cosd(theta) / W);           //(degrees)

//Rough plane:
//Force required to move the load up the plane:
mu = 0.3;
Phi = atand(mu);                          //(degrees)
P = W * (sind(alpha + Phi)/cosd(Phi));       //(N)

printf("Force required to move the load up the plane = %.2f N",P);    //The answers vary due to round off error
