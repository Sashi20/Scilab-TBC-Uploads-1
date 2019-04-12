//Example 2_26
clc;
clear;
close;

//Given data :
// Triangles ABD and DFE are similar
// AB/AD = DF/FE
AD=40;// Length of line AD in m
DF=40;// Length of line DF in m
CA=40;// Length of line CA in m
FE=75-CA;// Length of line FE in m
AB=AD*DF/FE;// Length of line AB in m
disp(AB,"Length of line AB in m");
// The answers vary due to round off error
