//Example 15_19
clc;
clear;
close;

//Given data
// As the radius remains same, T1T1'=II'=T2T2'=OO'
l=20;// Length of arc in m
d=3;// Degree of curve in degree
teta=68;// Deflection angle in degree
T2P=10;// Length of T2P in m
u=T2P/sind(teta);// Length of T2T2' in m
R=l/(d*3.14/180);// Radius of the curve in m
disp(R,"Radius of the curve in m");
TL=R*tand(teta/2);// Tangent length in m
T1=183.65;// Chainage of T1 in m
v=T1+u;// Chainage of T1' in m
disp(v,"Chainage of T1 dash in m")
x=v+TL;// Chainage of I' in m
disp(x,"Chainage of I dash in m");
L=R*teta*3.14/180;// Length of arc in m
y=v+L;// Chainage of T2' in m
disp(y,"Chainage of T2 dash in m")
// The answers vary due to round off error
