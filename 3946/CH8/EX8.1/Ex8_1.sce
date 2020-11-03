//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 300;                    //(N)(Weight of the body)
Mu = 0.3;                    //(Coefficient of friction)
alpha = 25;                     //(degrees)(Angle made by the force with the horizontal)
//P = Magnitude of the force, which can move the body,
//F = Force of friction

//Resolving the forces horizontally:
//F = P*cos(I)     -(i)

//Resolving the forces vertically:
//R = W - P*sin(I)  -(ii)

//From (i) and (ii)-
//F = Au * R
//P*cos(I) - Au * W + P * Au * sin(I) = 0
x = Mu * sind(alpha) + cosd(alpha);     //(Coefficient of P)
y = -Mu * W;              //(Constant term)
A = [x];
c = [y];
[P,nsA] = linsolve(A,c);
printf("Magnitude of the force, which can move the body = %.2f N",P);
