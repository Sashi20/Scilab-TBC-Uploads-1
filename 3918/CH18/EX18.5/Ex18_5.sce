//Example 18_5
clc;
clear;
close;

//Given data :
k=1/10000000;// Permeability in m/sec
nf=3;//
nd=12;//
H1=26;// Height 1 in m
H2=2;// Height 2 in m
DH=H1-H2;// Difference in height in m
Q=k*DH*(nf/nd);// Discharge in mm^3/sec
disp(Q,"Discharge in mm^3/sec");
EG=1.5;// Exit gradient at the filter drain
disp("The exit gradient is more than 1.0. But this is no cause for concern because the direction of flow is downward");
// The answers vary due to round off error
