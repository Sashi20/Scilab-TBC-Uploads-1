//Example 42_8
clc;
clear;
close;

//Given data :
b2=30;// in m
b1=20;// in m
b=b2-b1;// Base in m
h=10;// Height in m
A=1/2*b*h;// Area of failure wedge in m^2
gt=18;// Total Unit weight in kN/m^3
c=15;// in kPa
teta=0;// Angle in degree
W=A*gt;// Weight of failure wedge per metre length in kN/m
L=sqrt((h*h)+(b2*b2));// Length of the slip surface in m
b=atand(h/b2);// Inclination of the failure wedge in degree
DFS=1;// Dynamic Factor of Safety under seismic condition
// Where Fh = kh
// Since tan(0) = 0, ((W*cosd(b))-(Fh*sind(b)))*tand(teta)) = 0
Fh=((c*L)-(W*sind(b)))/(cosd(b));// Static force acting horizontally in kN
kh=Fh/W;// Pseudostatic seismic coefficient
// kh= ac/g
g=9.81;// Acceleration due to gravity in m/s^2
ac=kh*g;// Critical acceleration in m/s^2
disp(ac,"Critical acceleration in m/s^2");
// The answer provided in the textbook is wrong
