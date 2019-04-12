//Example 19_1
clc;
clear;
close;

//Given data :
teta1=42+(32/60);// Angle SPQ in degree
teta2=64+(36/60);// Angle SQP in degree
PQ=1580;// Distance PQ in m
x=PQ*tand(teta2)/(tand(teta1)+tand(teta2));// Coordinate x in m
disp(x,"Coordinate x")
y=x*tand(teta1);// Coordinate y in m
disp(y,"Coordinate y")
disp(y,x,"Coordinates of S(x,y) are");
// The answer provided in the textbook is wrong
