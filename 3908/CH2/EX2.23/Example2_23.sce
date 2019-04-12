//Example 2_23
clc;
clear;
close;

//Given data :
l=20;// Length of offset in m
r=40;
d=l/r;// Displacement due to linear error
// The combined error is equal to (((20*sin(alpha))^2)+(o.5^2))on the ground
// The combined error is equal to (1/40)(((20*sin(alpha))^2)+(o.5^2))on the paper
//Combined error on paper is equal to 0.025, which is plotting accuracy
alpha=asind(((((r*0.025)^2)-(0.5^2))/(l^2))^0.5);// Maximum error in angular measurement in degree
disp(alpha,"Maximum error in angular measurement in degree");
// The answer provided in the textbook is wrong
