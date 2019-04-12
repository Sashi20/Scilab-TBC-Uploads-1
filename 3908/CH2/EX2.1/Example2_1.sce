//Example 2_1
clc;
clear;
close;

//Given data :
ml=273.35;// Measured length in m
al=29.93;// Actual length in m
dl=30;// Designated length  in m
tl=ml*(al/dl);// True length in m
disp(tl,"True length in m");