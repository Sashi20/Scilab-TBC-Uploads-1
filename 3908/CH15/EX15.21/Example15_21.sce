//Example 15_21
clc;
clear;
close;

//Given data
d=3.5;// in degree
l=20;// Length of the arc in m
R=l*180/(d*3.14);// Radius of the curve in m
teta1=100;// Deflection angle in degree
teta2=15;// in degree
teta=teta1+teta2;// in degree
IT2=R*tand(teta1/2);// Length of IT2 in m
II1=IT2*sind(teta2)/sind(teta);// Length of II' in m
T1I1=IT2+II1;// Length of T1I' in m
R1=T1I1/tand(teta/2);// New radius of the curve in m
disp(R1,"New radius of the curve R dash in m");
CT1=1163.5;// Chainage of T1 in m
CI=CT1+T1I1;// Chainage of CI' in m
disp(CI,"Chainage of CI dash in m");
L=R1*teta*3.14/180;// Length of new arc in m
CT2=CT1+L;// Chainage of T2' in m
disp(CT2,"Chainage of T2 dash in m");
// The answers vary due to round off error
