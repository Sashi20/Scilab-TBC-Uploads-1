//Example 18_6
clc;
clear;
close;

//Given data :
Ta=12;// Thickeness of aquifier in m
Tg=2;// Thickness of ground water table in m
H=Ta-Tg;// Height between aquifier and ground water table in m
R=200;// Radius of influence in m
hA=5;// Height at point A in m
k=2/100000;// Permeability of soil in m/sec
// 1 m below excavation level at 6 m below ground surface)
xL=8;// Distance from point A to each well in m
xM=8;// Distance from point A to each well in m
xN=8;// Distance from point A to each well in m
xO=8;// Distance from point A to each well in m
N=4;// Total number of wells
Q=(((H^2)-(hA^2))*3.14*k)/(4*log(R/xL));// Discharge of water from each well in m^3/s
disp(Q,"Discharge of water from each well in m^3/s");
// The answers vary due to round off error
