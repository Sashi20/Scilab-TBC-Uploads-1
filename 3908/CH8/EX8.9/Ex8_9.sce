//Example 8_9
clc;
clear;
close;

//Given data :
IR=6.973;// Initial Reading in cm
FR=2.921;// Final Reading in cm
C=0;
N=1;
M=100;// in sq. cm
A=M*(FR-IR+(10*N)+C);// Area in sq. cm
// Scale is 1 cm = 100 m
// 1 sq. cm represents 100*100 sq. m of land area
s=100;// Scale in m
AG=A*s*s;// Area of ground in sq. m
AG=AG/10000;// Area of ground in hectares
disp(AG,"Area of ground in hectares");
