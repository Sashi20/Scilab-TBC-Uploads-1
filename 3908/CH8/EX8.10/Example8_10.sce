//Example 8_10
clc;
clear;
close;

//Given data :
IR=8.942;// Initial Reading in cm
FR=3.678;// Final Reading in cm
C=30;
N=-2;
M=100;// in sq. cm
A=M*(FR-IR+(10*N)+C);// Area in sq. cm
// Scale is 1 cm = 150 m
// 1 sq. cm represents 150*150 sq. m of land area
s=150;// Scale in m
AG=A*s*s;// Area of ground in sq. m
AG=AG/10000;// Area of ground in hectares
disp(AG,"Area of ground in hectares");
