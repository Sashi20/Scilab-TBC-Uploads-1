//Example 2_15
clc;
clear;
close;

//Given data :
d=0.06;// Distance by which tape was out of alignment in m
l=30;// Length of tape in m
CA=(d^2)/(2*l);// Correction for wrong alignment in m
disp(CA,"Correction for wrong alignment in m");
CL=l-CA;// Corrected length along the slope in m
disp(CL,"Corrected length along the slope in m");

// This corrected distance measured along the slope of gradient 1:12
lg=((12^2)+(1^2))^0.5;// Length along the gradient in units
hd=CL*12/lg;// Horizontal distance along the gradient 1:12 in m
disp(hd,"Horizontal distance along the gradient 1:12 in m")
