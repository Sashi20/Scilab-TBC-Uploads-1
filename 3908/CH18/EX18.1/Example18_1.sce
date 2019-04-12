//Example 18_1
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
n=6;// Number of observation
Amean=(O1+O2+O3+O4+O5+O6)/n;// Arithmetic mean in degree
disp(Amean,"Arithmetic mean in degree");
// Weight of mean = Number of obseravtions
Wmean=n;// Weight of mean
disp(Wmean,"Weight of mean");
// The answers vary due to round off error
