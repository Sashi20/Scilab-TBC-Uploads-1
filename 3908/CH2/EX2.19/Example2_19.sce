//Example 2_19
clc;
clear;
close;

//Given data :
l=18;// Length of offset in m
alpha=6;// angular error in degree
// (a) 1 cm= 10 m
s=10;// Equivalent Scale in m
dp=l*sind(alpha)/s;// Displacement parallel on to the chain line in cm
disp(dp,"(a) Displacement parallel on to the chain line in cm");
dP=l*(1-cosd(alpha))/s;// Displacement perpendicular on to the chain line in cm
disp(dP,"    Displacement perpendicular on to the chain line in cm");

// (b) 1:1500
s=15;// Equivalent Scale in m
dp=l*sind(alpha)/s;// Displacement parallel on to the chain line in cm
disp(dp,"(b) Displacement parallel on to the chain line in cm");
dP=l*(1-cosd(alpha))/s;// Displacement perpendicular on to the chain line in cm
disp(dP,"    Displacement perpendicular on to the chain line in cm");
