//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
P = 100;         //(N)(Effort)
d1 = 175;        //(Distance between A and F1)
d2 = 275;        //(Distance between C and D)
d3 = 25;
d4 = 125;        //(Distance between B and C)

Lup = d1/d3;             //leverage of the upper lever AB
Llow = (d2 + d3)/d3;     //leverage of the lower lever CF2

TotalLeverage = Lup * Llow;

//Total Leverage = W/P;
W = [P * TotalLeverage]/1000;          //(kN)
printf("W = %.2f kN",W);
