//Example 10_2
clc;
clear;
close;

//Given data :
T90=0.848;// Time Factor Corresponding to 90% consolidation
t90=16;// Time in years
T=24/1000;// Sample thickness in m
H=T/2;// Drainage path in m
cv=T90*H*H/t90;// Coefficient of Consolidation of the soil in m^2/min
disp(cv,"Coefficient of Consolidation of the soil in m^2/min");
