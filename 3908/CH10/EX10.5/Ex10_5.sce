//Example 10_5
clc;
clear;
close;

//Given data :
// Area of triange AFD
b=4;// Breath in m
h=5.6;// Height in m
A1=1/2*b*h;// Area of AFD in sq. m
// Area of trapezium AFEO
a=5.6;// Side 1 in m
b=7.8;// Side 2 in m
h=4;// Height in m
A2=1/2*(a+b)*h;// Area of AFEO in sq. m
// Area of trapezium OEDB
a=7.8;// Side 1 in m
b=8.2;// Side 2 in m
h=4;// Height in m
A3=1/2*(a+b)*h;// Area of AFEO in sq. m
// Area of triange BDG
b=4;// Breath in m
h=8.2;// Height in m
A4=1/2*b*h;// Area of AFD in sq. m
A=A1+A2+A3+A4;// Total Area in sq. m
disp(A,"Total Area in sq. m");
//The answer provided in the textbook is wrong
