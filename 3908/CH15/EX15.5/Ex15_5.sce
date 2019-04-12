//Example 15_5
clc;
clear;
close;

//Given data
a=20;// Length of arc in m
d=4*3.14/180;// Degree of curve in radian
R=a/d;// Radius of the curve in m
teta=40;// Deflection angle in degree
l=2*R*sind(teta/2);// Length of long chord in m
disp(l,"Length of long chord in m");
m1=a;// Distance from midpoint in m
m2=a+20;// Distance from midpoint in m
m3=a+40;// Distance from midpoint in m
m4=a+60;// Distance from midpoint in m
m5=l/2;// Distance from midpoint in m
// Using exact formula
disp("Using exact formula");
Y1=sqrt((R^2)-(m1^2))-sqrt((R^2)-((m5)^2));// Length of Offset Y1  in m
disp(Y1,"Length of Offset Y1 from centre in m");
Y2=sqrt((R^2)-(m2^2))-sqrt((R^2)-((m5)^2));// Length of Offset Y2  in m
disp(Y2,"Length of Offset Y2 from centre in m");
Y3=sqrt((R^2)-(m3^2))-sqrt((R^2)-((m5)^2));// Length of Offset Y3 in m
disp(Y3,"Length of Offset Y3 from centre in m");
Y4=sqrt((R^2)-(m4^2))-sqrt((R^2)-((m5)^2));// Length of Offset Y4 in m
disp(Y4,"Length of Offset Y4 from centre in m");
Y5=sqrt((R^2)-(m5^2))-sqrt((R^2)-((m5)^2));// Length of Offset Y5 in m
disp(Y5,"Length of Offset Y5 from centre in m");
x1=l/2;// Distance from tangent point x1 in m
x2=x1-20;// Distance from tangent point x2 in m
x3=x1-40;// Distance from tangent point x3 in m
x4=x1-60;// Distance from tangent point x4 in m
x5=x1-80;// Distance from tangent point x5 in m
// Using approximate formula
disp("Using approximate formula");
Y1=x1*(l-x1)/(2*R);// Length of Offset Y1 in m
disp(Y1,"Length of Offset Y1 in m");
Y2=x2*(l-x2)/(2*R);// Length of Offset Y2 in m
disp(Y2,"Length of Offset Y2 in m");
// The answers vary due to round off error
