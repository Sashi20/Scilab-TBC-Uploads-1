//Example 19_3
clc;
clear;
close;

//Given data :
// The clay is overconsolidated
// Assume lambda from Table 19.3

// assumption 1
lambda=0.5;
cs=100*lambda;// Corrected settlement for 0.5 lambda value in mm
disp(cs,"Corrected settlement for 0.5 lambda value in mm");

// assumption 2
lambda=0.6;
cs=100*lambda;// Corrected settlement for 0.6 lambda value in mm
disp(cs,"Corrected settlement for 0.6 lambda value in mm");
