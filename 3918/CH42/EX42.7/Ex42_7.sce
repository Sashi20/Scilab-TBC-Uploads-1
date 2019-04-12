//Example 42_7
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

// Safety Factor under static condition
SF=((c*L)+(W*cosd(b)*tand(teta)))/(W*sind(b));// Safety Factor under static condition
disp(SF,"Safety Factor under static condition is");
// The answers vary due to round off error

// Dynamic factor of Safety under seismic condition
kh=0.3;// Pseudostatic seismic coefficient
Fh=kh*W;// Static force acting horizontally in kN
DFS=((c*L)+(((W*cosd(b))-(Fh*sind(b)))*tand(teta)))/((W*sind(b))+(Fh*cosd(b)));// Dynamic Factor of Safety under seismic condition
disp(DFS,"Dynamic Factor of Safety under seismic condition");
// The answers vary due to round off error
