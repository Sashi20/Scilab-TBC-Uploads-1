//Example 15_31
clc;
clear;
close;

//Given data
teta=2*asind(25/220);// Central angle in degree
R=(25/2)/(1-cosd(teta));// Radius of the curve in m
disp(R,"Radius of the curve in m");
L=2*R*sind(teta/2);// Length of the long chord in m
disp(L,"Length of the long chord in m");
x0=0;// Distance from midpoint in m
x1=x0+10;// Distance from midpoint in m
x2=x1+10;// Distance from midpoint in m
x3=x2+10;// Distance from midpoint in m
x4=x3+10;// Distance from midpoint in m
x5=x4+10;// Distance from midpoint in m
x6=L/2;// Distance from midpoint in m
Y1=sqrt((R^2)-(x0^2))-sqrt((R^2)-((L/2)^2));// Offset Y1 from long chord in m
disp(Y1,"Offset Y1 from long chord in m");
Y2=sqrt((R^2)-(x1^2))-sqrt((R^2)-((L/2)^2));// Offset Y2 from long chord in m
disp(Y2,"Offset Y2 from long chord in m");
Y3=sqrt((R^2)-(x2^2))-sqrt((R^2)-((L/2)^2));// Offset Y3 from long chord in m
disp(Y3,"Offset Y3 from long chord in m");
Y4=sqrt((R^2)-(x3^2))-sqrt((R^2)-((L/2)^2));// Offset Y4 from long chord in m
disp(Y4,"Offset Y4 from long chord in m");
Y5=sqrt((R^2)-(x4^2))-sqrt((R^2)-((L/2)^2));// Offset Y5 from long chord in m
disp(Y5,"Offset Y5 from long chord in m");
Y6=sqrt((R^2)-(x5^2))-sqrt((R^2)-((L/2)^2));// Offset Y6 from long chord in m
disp(Y6,"Offset Y6 from long chord in m");
Y7=sqrt((R^2)-(x6^2))-sqrt((R^2)-((L/2)^2));// Offset Y7 from long chord in m
disp(Y7,"Offset Y7 from long chord in m");
