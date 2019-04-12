//Example 15_18
clc;
clear;
close;

//Given data
QS=410;// Length of QS in m
teta1=58+(45/60);// in degree
teta2=66+(45/60);// in degree
R=QS/(tand(teta1/2)+tand(teta2/2));// Radius of the curve in m
disp(R,"Radius of the curve in m");
PQ=R*tand(teta1/2);// Tangent length PQ in m
disp(PQ,"Tangent length PQ in m");
T1Q=PQ;// Tangent length T1Q in m
disp(T1Q,"Tangent length T1Q in m");
T3Q=T1Q;// Tangent length T3Q in m
disp(T3Q,"Tangent length T3Q in m");
ST2=R*tand(teta2/2);// Tangent length ST2 in m
disp(ST2,"Tangent length ST2 in m");
ST3=R*tand(teta2/2);// Tangent length ST3 in m
disp(ST3,"Tangent length ST3 in m");
// The answers vary due to round off error
