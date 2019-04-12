//Example 18_6
clc;
clear;
close;

//Given data :
O1=36+(22/60)+(40/3600);// Observation 1 in degree
O2=36+(22/60)+(44/3600);// Observation 2 in degree
O3=36+(22/60)+(42/3600);// Observation 3 in degree
O4=36+(22/60)+(50/3600);// Observation 4 in degree
O5=36+(22/60)+(38/3600);// Observation 5 in degree
O6=36+(22/60)+(46/3600);// Observation 6 in degree
n=6;// Number of observation
P=(O1+O2+O3+O4+O5+O6)/n;// Most probable value P in degree
m=(P-int(P))*60;// in minutes
s=(m-int(m))*60;// in seconds
disp(s,int(m),int(P),"Most probable value P in degree,minute and seconds respectively");

