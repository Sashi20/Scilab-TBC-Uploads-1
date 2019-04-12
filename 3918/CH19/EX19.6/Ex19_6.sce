//Example 19_6
clc;
clear;
close;

//Given data :
AS=0.8*60;// Average settlement in mm
DF=0.87;// Depth Factor
CS=600*DF;// Consolidation Settlement corrected for depth in mm
disp(CS,"Consolidation Settlement corrected for depth in mm");
ES=AS*DF;// Elastic Settlement corrected for both rigidity and depth in mm
disp(ES,"Elastic Settlement corrected for both rigidity and depth in mm");
// The answers vary due to round off error
