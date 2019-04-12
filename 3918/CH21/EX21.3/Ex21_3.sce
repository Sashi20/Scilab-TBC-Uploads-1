//Example 21_3
clc;
clear;
close;

//Given data :
Su=40;// Undrained shear strength of clay in kN/m^2
gt=20;// Unit weight of clay in kN/m^3
betaa=30;// Inclined angle in degree
H=10;// Elevation difference in m
D=2;
Ns=0.172;// Stability number (From table 21.1)
Cr=gt*H*Ns;// Amount of c required to maintain stable slope kN/m^2
C=40;// Cohesion intercept in kN/m^2
SF=C/Cr;// Safety Factor of a finite slope in clay
disp(SF,"Safety Factor of a finite slope in clay");
// The answers vary due to round off error
