//Example 15_34
clc;
clear;
close;

//Given data
R=300;// Radius of circular curve in m
g=9.81;// Force due to gravity in m/s^2
v1=sqrt(15*g*R/150);// Design speed of vehicles in m/s
v=sqrt(15*g*R/150)*3600/1000;// Design speed of vehicles in km/hr
disp(v,"Design speed of vehicles in km/hr");
alpha=0.3;// Rate of change of radial acceleration in m/s^3
L=v1^3/(alpha*R);// Length of transition curve in m
disp(L,"Length of transition curve in m");
tetad=L/(2*R)*180/3.14;// Spiral angle in degree
disp(tetad,"Spiral angle in degree");
S=L^2/(24*R);// Shift in m
disp(S,"Shift in m");
// The answers vary due to round off error
