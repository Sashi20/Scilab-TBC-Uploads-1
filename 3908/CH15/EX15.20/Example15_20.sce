//Example 15_20
clc;
clear;
close;

//Given data
R=400;// Radius of the curve in m
teta=75;// Angle of deflection in degree
IT2=R*tand(teta/2);// Tangent length IT2 in m
II1=IT2*sind(10)/sind(teta+10);// Length of II' in m
I1T2=IT2*sind(teta)/sind(teta+10);// Length of I'T2 in m
R1=I1T2/tand((teta+10)/2);// New radius R' in m
disp(R1,"New radius R dash in m");
IT1=IT2;
T1I1=I1T2;
T1T1=IT1+II1-T1I1;// Length of T1T1' in m
T1=986.45;// Chainage of T1 in m
CT1=T1+T1T1;// Chainage of T1' in m
disp(CT1,"Chainage of T1 dash in m");
CI=CT1+I1T2;// Chainage of I' in m
disp(CI,"Chainage of I dash in m");
L=R1*(teta+10)*3.14/180;// Length of new arc in m
CT2=CT1+L;// Chainage of T2' in m
disp(CT2,"Chainage of T2 dash in m");
// The answers vary due to round off error
