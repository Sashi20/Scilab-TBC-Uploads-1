//Example 18_4
clc;
clear;
close;

//Given data :
k=1/100000;// Permeability in m/sec
nf=3;//
nd=10.5;//
H1=5.5;// Height 1 in m
H2=0.25;// Height 2 in m
DH=H1-H2;// Difference in height in m
Q=k*DH*(nf/nd);// Discharge in mm^3/sec
disp(Q,"Discharge in mm^3/sec");
Lgh=0.55;// Length in m
EG=(DH/(nd*Lgh));// Exit gradient along GH
disp(EG,"Exit gradient along GH is");
// The answers vary due to round off error
