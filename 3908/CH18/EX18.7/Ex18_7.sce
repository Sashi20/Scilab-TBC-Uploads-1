//Example 18_7
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
w1=1;// Weight of observation O1
w2=2;// Weight of observation O2
w3=4;// Weight of observation O3
w4=3;// Weight of observation O4
w5=2;// Weight of observation O5
w6=3;// Weight of observation O6
s=w1+w2+w3+w4+w5+w6;// Sum of weight of observations
Amean=((O1*w1)+(O2*w2)+(O3*w3)+(O4*w4)+(O5*w5)+(O6*w6))/s;// Weighted arithmetic mean in degree
m=(Amean-int(Amean))*60;// in minutes
s=(m-int(m))*60;// in seconds
disp(s,int(m),int(Amean),"Weighted arithmetic mean in degree,minute and seconds respectively");
