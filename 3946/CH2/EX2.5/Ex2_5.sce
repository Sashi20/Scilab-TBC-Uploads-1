//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
//From figure....
ABC = 90;      //(degrees)
BC = 50;       //(newton)
AB = 40;       //(newton)
CA = 30;       //(newton)

theta = asind(CA/BC);

//Resolving the forces horizontally;
H = AB - CA*cosd(theta);           //(newton)
V = BC - CA*sind(theta);           //(newton)

Resultant = sqrt(H^2 + V^2);
printf("Resultant Force = %.2f N",Resultant);      //The answers vary due to round off error
