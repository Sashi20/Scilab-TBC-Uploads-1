//Example 15_27
clc;
clear;
close;

//Given data
T1T2=200;// Distance between tangent points in m
T2G=20;// Length TG2 in m
teta=2*asind(T2G/T1T2);// Angle in degree
disp(teta)
R=(T2G/2)/(1-cosd(teta));// Radius of the arc in m
disp(R,"Radius of the arc in m");
