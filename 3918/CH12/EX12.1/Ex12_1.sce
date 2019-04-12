//Example 12_1
clc;
clear;
close;

//Given data :
// With reference to Fig 12.14
a=100;// (pi1 - pi3)f/2 in kN/m^2
angle=30;// angle in degree
towff=150*tand(angle);// towff in kN/m^2
err=(a-towff)/towff*100;// Error in percentage
disp(err,"Error in percentage");
// The answers vary due to round off error
