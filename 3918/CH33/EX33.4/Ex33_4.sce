//Example 33_4
clc;
clear;
close;

//Given data :
disp("a)");
Td=53.3;// Tension developed in reinforcement in kN ( From Example 32.2)
SF=2;// Minimum acceptable Safety Factor
Tall=SF*Td;// Allowable strength of geotextile or geogrid in kN/m
disp(Tall," Allowable strength of geotextile or geogrid in kN/m");

disp("b)");
teta=24;// angle of friction in degree
sigmav=17*9.5;
Le=Tall/(sigmav*tand(teta)*2*1);// Effective length required to prevent slippage in m
disp(Le,"   Effective length required to prevent slippage in m");
// The answers vary due to round off error
