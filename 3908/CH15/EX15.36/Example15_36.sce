//Example 15_36
clc;
clear;
close;

//Given data
R=600;// Radius of the circular curve in m
L=120;// Length of transition curve in m
S=L^2/(24*R);// Shift in m
teta1=40.5;// Deflection angle between tangents in degree
TL=((R+S)*tand(teta1/2))+((L/2)*(1-S/(5*R)));// Total tangent length in m
tetad=L/(2*R)*180/3.14;// Spiral angle in degree
teta=teta1-(2*tetad);// Central angle of circular arc in degree
l=R*3.14*teta/180;// Length of circular arc in m
S=L^2/(24*R);// Shift in m
LC=l+(2*L);// Length of combined curve in m
I=2050;// Chainage of I in m
C1=I-TL;// Chainage of beginning of first transition curve in m
disp(C1,"Chainage of beginning of first transition curve in m");
C2=C1+L;// Chainage of beginning of circular arc in m
disp(C2,"Chainage of beginning of circular arc in m");
C3=C2+l;// Chainage of end of circular arc in m
disp(C3,"Chainage of end of circular arc in m");
C4=C3+L;// Chainage of end of combined curve in m
disp(C4,"Chainage of end of combined curve in m");
// The answers vary due to round off error
