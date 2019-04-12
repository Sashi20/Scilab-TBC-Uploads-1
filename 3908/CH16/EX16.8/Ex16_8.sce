//Example 16_8
clc;
clear;
close;

//Given data :
alpha=2+(34/60)+(35/3600);// Vertical angle from P to Q in degree
// R*sin(1")=30.91
a=30.91;
d=2574;// Distance between station P and station Q in m
teta=d/a;// Central angle in seconds
teta1=alpha+(teta/3600);// Angle in degree
s=5;// Target height in m
h=1.35;// Height of instrument in m
x=teta/(2*3600);
AC=(s-h)*(cosd(teta1)^2)/(d*cosd(teta/(2*3600)));// Axis-signal correction in radian
AC=AC*180/3.14;// Axis-signal correction in degree
M=AC*60;// Axis-signal correction in minute
disp(M,"Axis-signal correction in minute");
CE=alpha-AC;// Corrected angle of elevation in degree
CEm=(CE-int(CE))*60;// in minutes
CEs=(CEm-int(CEm))*60;// in seconds
disp(CEs,int(CEm),int(CE),"Corrected angle of elevation in degree,minutes and seconds respectively");
// The answers vary due to round off error
