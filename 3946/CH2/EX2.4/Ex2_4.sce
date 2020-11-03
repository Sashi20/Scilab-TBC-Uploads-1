//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
W = 1000;         //(newton)(weight)

//Resolving the forces horizontally and equating the same;
//T1*cosd(60) - T2*cosd(45) = 0....(i)

//Resolvong the forces vertically:
///T1*sind(60) + T2*sind(45) - 1000 = 0....(ii)

//From (i) and (ii):
A = [cosd(60), -cosd(45); sind(60), sind(45)];    //Coefficient matrix
C = [0; -1000];    //Constant term matrix

[x,nsA] = linsolve(A,C);
T1 = x(1);
T2 = x(2);

printf("T1 = %.2f N\n",T1);    //The answers vary due to round off error
printf("T2 = %.2f N",T2);    //The answers vary due to round off error
