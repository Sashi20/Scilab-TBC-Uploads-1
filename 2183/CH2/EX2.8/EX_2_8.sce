// Example 2.8:Number of modes
clc;
clear;
close;
n1=1.5;//Waveguide Refractive Index
d= 0.015;// Cange in core-cladding refractive index
a=40;// core radius in micro meters
h=0.85;//wavelngth in micro meters
v=(2*%pi*a*n1*sqrt(2*d))/h;//Normalised wavelngth
m= round (v^2/2);// number of modes
disp(m,"number of modes")
//answer is wrong in the textbook

