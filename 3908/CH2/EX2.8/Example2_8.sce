//Example 2_8
clc;
clear;
close;

//Given data :
ma=98.68;// Measured area in sq m
tl=15;// True length of line in m
ml=14.76;// Measured length of line in m
tap=ma*(tl/ml)^2;// True area of plan in sq m
disp(tap,"True area of plan in sq.m")
al=30.15;// Actual length of chain in m
ma=tap;// Measured area in sq m
dl=30;// Designated length in m
ta=ma*(al/dl)^2;// True area in sq m
tal=ta*25^2;// True area of land in sq m
disp(tal,"True area of land in sq m");
