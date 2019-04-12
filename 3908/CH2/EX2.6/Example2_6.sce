//Example 2_6
clc;
clear;
close;

//Given data :
mv=486.95;// Measured volume in cubic m
al=20.1;// Actual length in m
dl=20;// Designated length in m
tv=mv*(al/dl)^3;// True volume in cubic m
disp(tv,"True volume in cubic m")
