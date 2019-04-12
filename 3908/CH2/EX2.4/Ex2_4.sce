//Example 2_4
clc;
clear;
close;

//Given data :
al=20.12;// Actual length of chain in m
mw=280;// Measured width in m
dl=20;// Designated width in m
tw=mw*(al/dl);// True width in m
ml=420;// Measured length  in m
tl=ml*(al/dl);// True length  in m
ta=tw*tl;// True area in sq.m
disp(ta,"True area in sq.m");
