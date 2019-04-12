//Example 10_18
clc;
clear;
close;

//Given data :
A=2.8;// Depth at point A in m
B=3.2;// Depth at point B in m
C=2.6;// Depth at point C in m
D=2.6;// Depth at point D in m
E=3.1;// Depth at point E in m
F=2.4;// Depth at point F in m
G=2.4;// Depth at point G in m
H=2.9;// Depth at point H in m
I=2.2;// Depth at point I in m
h1=A+C+G+I;// A,C,G,I are used once
h2=B+D+F+H;// B,D,F,H are used twice
h3=0;// Nothing is used thrice
h4=E;// E is used four times
a=10;// side of square in m
A=a*a;// Area in sq. m
V=A*(h1+(2*h2)+(3*h3)+(4*h4))/4;// Volume of excavation in cubic m
disp(V,"Volume of excavation in cubic m");
