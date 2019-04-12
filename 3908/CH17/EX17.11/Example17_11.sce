//Example 17_11
clc;
clear;
close;

//Given data :
A=8/(10^6);// Area of cross section of tape in sq. m
d=78500;// Density of the tape material in N/cubic m
w=A*1*d;// Weight of the tape per meter length in N/m
l=100;// Length of tape in m
n=3;// Number of spans
W=w*l/n;// Weight of tape between supports in N
P=200;// Force of pull in N 
SC=n*(l/n)*(W^2)/(24*(P^2));// Sag correction in m
disp(SC,"Sag correction in m");
// The answers vary due to round off error
