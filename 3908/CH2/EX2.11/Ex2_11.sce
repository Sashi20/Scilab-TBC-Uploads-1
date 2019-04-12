//Example 2_11
clc;
clear;
close;

//Given data :
// (a) 1 in 1000
l=30;// Length in m
cf=l/1000;// Correction factor for (a)
// Therefore 30(1-cos a)=0.03
a=acosd(1-(cf/30));// Slope in degree
disp(a,"(a)The slope in degree should not be more than");
// The answers vary due to round off error

// (b) 1 in 500
cf=l/500;// Correction factor for (a)
// Therefore 30(1-cos a)=0.06
a=acosd(1-(cf/30));// Slope in degree
disp(a,"(a)The slope in degree should not be more than");
// The answers vary due to round off error
