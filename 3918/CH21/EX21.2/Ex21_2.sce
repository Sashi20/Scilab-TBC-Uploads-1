//Example 21_2
clc;
clear;
close;

//Given data :
gt=19;// Unit weight of sand in kN/m^3
teta=30;// slope in degree
gw=10;// Unit weight of water in kN/m^3
i=atand(tand(teta)*((gt-gw)/gt));// Slope in degree
disp(i,"The slope will be stable in degree");
// The answers vary due to round off error
