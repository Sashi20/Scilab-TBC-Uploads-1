//Example 29_2
clc;
clear;
close;

//Given data :
D1=14;// Initial dry density of soil in kN/m^3
D2=16;// Final dry density of soil in kN/m^3
d=10;// Depth of soil in m 
l=1;// Length of soil in m
w=1;// Breath of soil in m
D=D2-D1;// Required increase in dry density of soil on kN/m^3
Em=D*d*l*w;// Extra material required per square metre of plan area for a depth of 10m in kN
Vm=Em/D2;// Volume of material required per square metre in m^3
C=300;// Material cost per m^2 in Rs.
Cm=C*Vm;// Cost of material required per square metre in Rs.
Cp=Cm;// Cost of construction of pile in Rs.
TC=Cm+Cp;// Total cost of treatment per square metre of plan area in Rs.
disp(TC,"Total cost of treatment per square metre of plan area in Rs.");
