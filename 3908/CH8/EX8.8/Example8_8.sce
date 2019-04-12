//Example 8_8
clc;
clear;
close;

//Given data :
l1=3.4;// Length of offset in m
l2=6.2;// Length of offset in m
l3=6.8;// Length of offset in m
l4=5.9;// Length of offset in m
l5=8.4;// Length of offset in m
l6=6.2;// Length of offset in m
l7=10.3;// Length of offset in m
l8=11.5// Length of offset in m
l9=9.8;// Length of offset in m
l10=8.5;// Length of offset in m
x1=0;// Chainage in m
x2=7;// Chainage in m
x3=12;// Chainage in m
x4=18;// Chainage in m
x5=25;// Chainage in m
x6=32;// Chainage in m
x7=42;// Chainage in m
x8=48;// Chainage in m
x9=55;// Chainage in m
x10=65;// Chainage in m
// Area of trapezium = (sum of adjacent ordinates/2)*distance between ordinates
A=((l1+l2)/2*(x2-x1))+((l2+l3)/2*(x3-x2))+((l3+l4)/2*(x4-x3))+((l4+l5)/2*(x5-x4))+((l5+l6)/2*(x6-x5))+((l6+l7)/2*(x7-x6))+((l7+l8)/2*(x8-x7))+((l8+l9)/2*(x9-x8))+((l9+l10)/2*(x10-x9));// Area in sq. m
disp(A,"Area in sq. m");
