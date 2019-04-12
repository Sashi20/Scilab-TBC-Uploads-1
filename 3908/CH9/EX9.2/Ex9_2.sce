//Example 9_2
clc;
clear;
close;

//Given data :
A=100.1;// Point A
B=100.6;// Point B
C=99.9;// Point C
D=100.6;// Point D
E=99.8;// Point E
F=100.4;// Point F
p1=100.3;// Point of elevation 1 in m
p2=100.5;// Point of elevation 2 in m
p3=100.2;// Point of elevation 3 in m
p4=100.4;// Point of elevation 4 in m
p5=100.2;// Point of elevation 5 in m
s=10;// since 10 m square

// On the line AB
d=B-A;// Difference in elevation in m
D1=s*(p1-A)/d;// Distance from A of point 1 in m
disp(D1,"Distance from A of point 1 in m");
D2=s*(p2-A)/d;// Distance from A  of point 2 in m
disp(D2,"Distance from A  of point 2 in m");

// On the line CD
d=D-C;// Difference in elevation in m
D3=s*(p3-C)/d;// Distance from C of point 3 in m
disp(D3,"Distance from C of point 3 in m");
D4=s*(p4-C)/d;// Distance from C of point 4 in m
disp(D4,"Distance from C of point 4 in m");

// On the line EF
d=F-E;// Difference in elevation in m
if F==p4 then
    disp("The 100.4 contour is a point F");
else
    D6=s*(p4-A)/d;// Distance from C of point 6 in m
disp(D6,"Distance from C of point 6 in m");
end
D5=s*(p5-E)/d;// Distance from C of point 5 in m
disp(D5,"Distance from C of point 5 in m");
// The answers vary due to round off error
