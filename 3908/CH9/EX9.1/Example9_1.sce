//Example 9_1
clc;
clear;
close;

//Given data :
A=100.2;// Point A
B=100.9;// Point B
C=100.4;// Point C
D=99.8;// Point D
p1=100.4;// Point of elevation 1 in m
p2=100.6;// Point of elevation 2 in m
p3=100.8;// Point of elevation 3 in m
p4=100.6;// Point of elevation 4 in m
p5=100.8;// Point of elevation 5 in m
s=15;// since 15 m square

// On the line AB
d=B-A;// Difference in elevation in m
D1=s*(p1-A)/d;// Distance from A of point 1 in m
disp(D1,"Distance from A of point 1 in m");
D2=s*(p2-A)/d;// Distance from A  of point 2 in m
disp(D2,"Distance from A  of point 2 in m");
D3=s*(p3-A)/d;// Distance from A of point 3 in m
disp(D3,"Distance from A of point 3 in m");

// On the line BC
d=B-C;// Difference in elevation in m
// 100.4 m is a point C only
if C==p1 then
    disp("100.4 m is a point C only");
else
    D6=s*(p1-C)/d;// Distance from A of point 1 in m
disp(D6,"Distance from A of point 1 in m");
end
D4=s*(p4-C)/d;// Distance from A  of point 2 in m
disp(D4,"Distance from A  of point 2 in m");
D5=s*(p5-C)/d;// Distance from A of point 3 in m
disp(D5,"Distance from A of point 3 in m");
