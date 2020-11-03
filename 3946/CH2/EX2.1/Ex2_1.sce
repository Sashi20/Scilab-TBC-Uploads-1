//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
F1 = 100;      //(N(newton))
F2 = 150;      //(N(newton))
theta = 45;        //(degree)

//R = (F1^2 + F2^2 + 2*F1*F2*cosX)^(1/2))
Resultant = ((F1^2 + F2^2 + 2*F1*F2*cosd(theta))^(1/2));
printf("Resultant Force = %.2f N",Resultant);....//The answers vary due to round off error
