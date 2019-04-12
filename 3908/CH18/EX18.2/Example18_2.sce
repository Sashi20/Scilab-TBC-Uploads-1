//Example 18_2
clc;
clear;
close;

//Given data :
O1=42+(22/60)+(32/3600);// Observation 1 in degree
O2=42+(22/60)+(30/3600);// Observation 2 in degree
O3=42+(22/60)+(33/3600);// Observation 3 in degree
O4=42+(22/60)+(34/3600);// Observation 4 in degree
O5=42+(22/60)+(29/3600);// Observation 5 in degree
O6=42+(22/60)+(30/3600);// Observation 6 in degree
w1=2;// Weight of observation O1
w2=4;// Weight of observation O2
w3=3;// Weight of observation O3
w4=2;// Weight of observation O4
w5=3;// Weight of observation O5
w6=4;// Weight of observation O6
s=w1+w2+w3+w4+w5+w6;// Sum of weight of observations
Amean=((O1*w1)+(O2*w2)+(O3*w3)+(O4*w4)+(O5*w5)+(O6*w6))/s;// Arithmetic mean in degree
disp(Amean,"Arithmetic mean in degree");
// Weight of mean = Sum of weight of observations
Wmean=s;// Weight of mean
disp(Wmean,"Weight of mean");
// The answers vary due to round off error
