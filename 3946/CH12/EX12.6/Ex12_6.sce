//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all

//Solved by using alternative method
L = 5;      //(m)(Length of the beam)
l = 3;      //(m)(Span)

//Let RC = Reaction at C,
//RC = Reaction at D,
//x = Distance of the support C from the left hand end;

//Sum of the anticlockwise moments due to RD and point load at A about the support C:
//M1 = (5.5 * 3) + (3 * x) = 16.5 + 3 *x;    -(1)

//Sum of clockwise moments due to the loads about C:
//M2 = 5*(5 - x) + 0.6 * 5*(2.5 - x) = 32.5 - 8*x;    -(2)

//Equating (1) and (2):
//16.5 + 3*x = 32.5 - 8*x
x1 = 8;    //(Coefficient of x R.H.S)
x2 = 3;    //(Coefficient of x L.H.S)

c1 = 16.5;    //(Constant L.H.S)
c2 = 32.5;    //(Constant R.H.S)
A = [x1+x2];
c = [c1 - c2];
[x,nsA] = linsolve(A,c);
printf("It is thus obvious that the first support will be located at distance of %.2f from A and second support at a distance of %.2f m from A.",x,x+l);
