//Example 15_15
clc;
clear;
close;

//Given data
R=350;// Radius of the curve in m
PR=50;// Length of PR in m
RQ=68;// Length of RQ in m
d=110;// Angle PRQ in degree
PQ=sqrt((PR^2)+(RQ^2)-(2*PR*RQ*cosd(d)));// Length of PQ in m
disp(PQ)
P=1138.535;// Chainage of P in m
teta=48;// Angle of deflection in degree
TL=R*tand(teta/2);// Tangent length in m
IQ=133.48;// in m
QT1=TL-IQ;// in m
T1=P+PQ-QT1;// Chainage of T1 in m
disp(T1,"Chainage of T1 in m");
l=R*teta*3.14/180;// Length of arc in m
T2=T1+l;// Chainage of T2 in m
disp(T2,"Chainage of T2 in m");
I=T1+TL;// Chainage of I in m
disp(I,"Chainage of I in m");
// The answer provided in the textbook is wrong
