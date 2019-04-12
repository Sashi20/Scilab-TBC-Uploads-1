//Example 18_2
clc;
clear;
close;

//Given data :
// Clay
k=1/1000000000;// Permeability in m/sec
L=0.5;// Thickness of clay layer in m
A=100;// Lake bed area in mm^2
DH=1;// Difference in height in m
Q1=k*(DH/L)*A*1000*60*60;// Discharge in clay in mm^3
disp(Q1,"Discharge in clay in mm^3");

// Silt
k=1/1000000;// Permeability in m/sec
L=0.5;// Thickness of clay layer in m
A=100;// Lake bed area in mm^2
DH=1;// Difference in height in m
Q2=k*(DH/L)*A*1000*60*60;// Discharge in silt in mm^3
disp(Q2,"Discharge in silt in mm^3");

// Sand
k=1/10000;// Permeability in m/sec
L=0.5;// Thickness of clay layer in m
A=100;// Lake bed area in mm^2
DH=1;// Difference in height in m
Q3=k*(DH/L)*A*1000*60*60;// Discharge in sand in mm^3
disp(Q3,"Discharge in sand in mm^3");
TF=Q1+Q2+Q3;// Total flow in mm^3
disp(TF,"Total flow in mm^3");
