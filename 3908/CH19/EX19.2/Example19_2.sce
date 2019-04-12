//Example 19_2
clc;
clear;
close;

//Given data :
teta1=76+(42/60);// Angle SPQ in degree
teta2=32+(56/60);// Angle PSQ in degree
teta3=180-(teta1+teta2);// Angle PQS in degree
PQ=934;// Distance PQ in m
x=PQ*tand(teta3)/(tand(teta3)+tand(teta1));// Coordinate x in m
disp(x,"Coordinate x")
y=x*tand(teta1);// Coordinate y in m
disp(y,"Coordinate y")
disp(y,x,"Coordinates of S(x,y) are");
// The answer provided in the textbook is wrong
