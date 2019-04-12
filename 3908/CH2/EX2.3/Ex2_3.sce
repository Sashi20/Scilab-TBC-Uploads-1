//Example 2_3
clc;
clear;
close;

//Given data :
al=(29.95+30.08)/2;// Actual length of chain in m
ml=590.48;// Measured length of chain in m
dl=30;// Designated length of chain in m
tl=ml*(al/dl);// True length of chain in m
disp(tl,"True length in m");
// The answers vary due to round off error
