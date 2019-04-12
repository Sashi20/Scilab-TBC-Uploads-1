//Example 20_5
clc;
clear;
close;

//Given data :
gt1=20;// Unit weight of top layer in kN/m^3
t1=12;// Thickness of top layer in m
teta1=30;// Angle of top layer in degree
gt2=22;// Unit weight of bottom layer in kN/m^3
t2=20;// Thickness of bottom layer in m
teta2=35;// Angle of bottom layer in degree
K=1;// Coefficient of earth pressure
Nq1=20;
Nq2=50;

disp("For depth 10 m");
svdash=(gt1-10)*10;// Vertical effective stress in kN/m2
a=tand(teta1);
qb=svdash*Nq1;// Unit End Bearing in kN/m^2
disp(qb,"   Unit End Bearing in kN/m^2");
fs=K*svdash*a;// Unit Skin Friction in kN/m^2
disp(fs,"   Unit Skin Friction in kN/m^2");
// The answers vary due to round off error

disp("For depth 15 m");
svdash=((gt1-10)*t1)+((gt2-10)*(15-t1));// Vertical effective stress in kN/m2
a=tand(teta2);
qb=svdash*Nq2;// Unit End Bearing in kN/m^2
disp(qb,"   Unit End Bearing in kN/m^2");
fs=K*svdash*a;// Unit Skin Friction in kN/m^2
// This value is more than the limiting value which is 100 kN/m^2, hence fs=100 kN/m^2
fs=100;// Unit Skin Friction in kN/m^2
disp(fs,"   Unit Skin Friction in kN/m^2");

disp("For depth 20 m");
svdash=((gt1-10)*t1)+((gt2-10)*(20-t1));// Vertical effective stress in kN/m2
a=tand(teta2);
qb=svdash*Nq2;// Unit End Bearing in kN/m^2
// This value is more than the limiting value which is 10000 kN/m^2, hence qb=10000 kN/m^2
qb=10000;// Unit End Bearing in kN/m^2
disp(qb,"   Unit End Bearing in kN/m^2");
// fs is alredy at limiting value. i.e==> fs=100 kN/m^2
fs=100;// Unit Skin Friction in kN/m^2
disp(fs,"   Unit Skin Friction in kN/m^2");

disp("For depth 25 m");
// qb and fs both are at limiting values
qb=10000;// Unit End Bearing in kN/m^2
disp(qb,"   Unit End Bearing in kN/m^2");
fs=100;// Unit Skin Friction in kN/m^2
disp(fs,"   Unit Skin Friction in kN/m^2");
