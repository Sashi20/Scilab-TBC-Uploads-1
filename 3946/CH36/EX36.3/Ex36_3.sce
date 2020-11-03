//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
ss = 7.8;      //(Specific gravity of steel)
sm = 13.6;     //(Specific gravity of mercury)
g = 9.8;       //(m/s^2)(Acceleration due to gravity)

//Let x = Part of the steel piece inside the mercury.
//(1 - x) = Part of the steel piece outside the mercury, i.e., inside water.

//Considering one cubic metre of the steel piece:
//(9.8 * 7.8)*1 = (9.8 * 13.6)*x + 9.8*(1 - x)
x = (g*ss - g)/(g*sm - g);

//Fraction of steel inside the mercury:
Fr = x/1;
printf("Fraction of steel inside the mercury = %.2f",Fr);
