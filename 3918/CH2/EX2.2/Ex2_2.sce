//Example 2_2
clc;
clear;
close;

//Given data :
Vv=67.7*1000;// Volume of voids in mm^3
Vs=18.5*1000;// Volume of solids in mm63
e=Vv/Vs;// Void ratio (no unit)
disp(e,"Void ratio is");
n=e/(1+e);// Porosity
disp(n,"Porosity is");
// The answers vary due to round off error
