//Example 18_7
clc;
clear;
close;

//Given data :
Q=36.6/100000;// Discharge in m^3/sec
Ta=12;// Thickeness of aquifier in m
Tg=2;// Thickness of ground water table in m
H=Ta-Tg;// Height between aquifier and ground water table in m
R=200;// Radius of influence in m
rw=0.150/2;// Radius of each well in m
k=2/100000;// Permeability of soil in m/sec
// 1 m below excavation level at 6 m below ground surface)
xM=10;// Distance from well L to well M in m
xN=16;// Distance from well L to well N in m
xO=10;// Distance from well L to well O in m
hw=sqrt((H^2)-((Q/(3.14*k))*(log(R/rw)+log(R/xM)+log(R/xN)+log(R/xO))));// Water level in each well in m
disp(hw,"Water level in each well in m");
// The answers vary due to round off error
