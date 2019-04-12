//Example 24_3
clc;
clear;
close;

//Given data :
gd=16;// Unit dry weight of soil in kN/m^3
gs=19;// Unit saturated weight of soil in kN/m^3
gw=10;// Unit weigh of water in kN/m^3
b=atand(1/2);// Beta for downstream slope in degree
teta=35;// Slope in degree
SFB=tand(teta)/tand(b);// Safety Factor for soil section B
disp(SFB,"Safety Factor for soil section B");
SFA=((gs-gw)/gs)*(tand(teta)/tand(b));// Safety Factor for soil section A
disp(SFA,"Safety Factor for soil section A");
// The answers vary due to round off error
