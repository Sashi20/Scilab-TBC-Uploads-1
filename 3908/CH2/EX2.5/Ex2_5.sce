//Example 2_5
clc;
clear;
close;

//Given data :
// (a) For the first 1200 m:
ml1=1200;// Measured length in m
dl1=30;// Designated length in m
l1=dl1-0.2;// Length before measurement in m
L1=dl1+0.1;// Length after measuring 1200 m
al1=(l1+L1)/2;// Average length in m
tl1=ml1*(al1/dl1);// True length in m
disp(tl1,"True length for first portion in m")

// (b) For the next 1448 (i.e., 2648-1200) m:
ml2=1448;// Measured length in m
dl2=30;// Designated length in m
l2=dl2+0.1;// Length before measurement in m
L2=dl2+0.3;// Length after measuring 1200 m
al2=(l2+L2)/2;// Average length in m
tl2=ml2*(al2/dl2);// True length in m
disp(tl2,"True length for second portion in m")
TL=tl1+tl2;// True length of the line in m
disp(TL,"True length of the line in m");
// The answers vary due to round off error
