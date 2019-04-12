//Example 15_8
clc;
clear;
close;

//Given data
x1=20;// Distance along tangent in m
x2=40;// Distance along tangent in m
x3=60;// Distance along tangent in m
x4=80;// Distance along tangent in m
x5=100;// Distance along tangent in m
R=800;// Radius of the curve in m
disp("Radial offset (exact value)");
Yr1=sqrt((R^2)+(x1^2))-R;// Radial offset Yr1 (exact value) in m
disp(Yr1,"Radial offset Yr1 (exact value) in m");
Yr2=sqrt((R^2)+(x2^2))-R;// Radial offset Yr2 (exact value) in m
disp(Yr2,"Radial offset Yr2 (exact value) in m");
Yr3=sqrt((R^2)+(x3^2))-R;// Radial offset Yr3 (exact value) in m
disp(Yr3,"Radial offset Yr3 (exact value) in m");
Yr4=sqrt((R^2)+(x4^2))-R;// Radial offset Yr4 (exact value) in m
disp(Yr4,"Radial offset Yr4 (exact value) in m");
Yr5=sqrt((R^2)+(x5^2))-R;// Radial offset Yr5 (exact value) in m
disp(Yr5,"Radial offset Yr5 (exact value) in m");

disp("Perpendicular offset (exact value)");
Yp1=R-sqrt((R^2)-(x1^2));// Perpendicular offset Yp1 (exact value) in m
disp(Yp1,"Perpendicular offset Yp1 (exact value) in m");
Yp2=R-sqrt((R^2)-(x2^2));// Perpendicular offset Yp2 (exact value) in m
disp(Yp2,"Perpendicular offset Yp2 (exact value) in m");
Yp3=R-sqrt((R^2)-(x3^2));// Perpendicular offset Yp3 (exact value) in m
disp(Yp3,"Perpendicular offset Yp3 (exact value) in m");
Yp4=R-sqrt((R^2)-(x4^2));// Perpendicular offset Yp4 (exact value) in m
disp(Yp4,"Perpendicular offset Yp4 (exact value) in m");
Yp5=R-sqrt((R^2)-(x5^2));// Perpendicular offset Yp5 (exact value) in m
disp(Yp5,"Perpendicular offset Yp5 (exact value) in m");

disp("Approximate value of offset");
Ya1=(x1^2)/(2*R);// Offset Ya1 (approximate value) in m
disp(Ya1,"Offset Ya1 (approximate value) in m");
Ya2=(x2^2)/(2*R);// Offset Ya2 (approximate value) in m
disp(Ya2,"Offset Ya2 (approximate value) in m");
Ya3=(x3^2)/(2*R);// Offset Ya3 (approximate value) in m
disp(Ya3,"Offset Ya3 (approximate value) in m");
Ya4=(x4^2)/(2*R);// Offset Ya4 (approximate value) in m
disp(Ya4,"Offset Ya4 (approximate value) in m");
Ya5=(x5^2)/(2*R);// Offset Ya5 (approximate value) in m
disp(Ya5,"Offset Ya5 (approximate value) in m");
// The answers vary due to round off error
