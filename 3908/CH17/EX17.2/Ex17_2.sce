//Example 17_2
clc;
clear;
close;

//Given data :
e=1/20000;// Probable error
a=log(1);
b=log(1+e);
L=21;// Difference in sixth place
d=1;// in seconds
R=3*L^2/(4*d^2);// Maximum value of R
disp(R,"Maximum value of R");
// The answers vary due to round off error
