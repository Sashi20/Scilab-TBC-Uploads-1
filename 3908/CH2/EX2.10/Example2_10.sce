//Example 2_10
clc;
clear;
close;

//Given data :
l=30;// Length of chain in m
// (a) Correction for slope is 0.06 m for 10 m length
// Therefore 10(1-cos a)=0.06
a=acosd(1-(0.06/10));// Slope in degree
disp(a,"(a)Slope in degree");
Ha=l*((secd(a))-1);// Hypotenusal allowance in m
disp(Ha,"  Hypotenusal allowance in m");

// (b) Correction for slope is 0.04 m for 10 m length
// Therefore 10(1-cos a)=0.04
a=acosd(1-(0.04/10));// Slope in degree
disp(a,"(b)Slope in degree");
Ha=l*((secd(a))-1);// Hypotenusal allowance in m
disp(Ha,"  Hypotenusal allowance in m");
