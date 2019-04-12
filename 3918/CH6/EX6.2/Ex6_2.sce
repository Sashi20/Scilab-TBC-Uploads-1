//Example 6_2
clc;
clear;
close;

//Given data :
L=150;// Length of sample in mm
D=100;// Diameter of sample in mm
d=2;// Diameter of vertical pipe in mm
a=3.14*d*d/4;// Area of the vertical pipe in mm^2
A=3.14*D*D/4;// Area of sample in mm^2
hi=350;// Height1 in mm
hf=200;// height2 in mm
t=60;// Time in seconds
V=1000000;// Volume of jar in mm^3
k=(L*a/A)*(log(hi/hf)/t)*(1/1000);// Permeability of silty sand sample in the permeameter in m/sec
disp(k,"Permeability of silty sand sample in the permeameter in m/sec");
// The answers vary due to round off error
