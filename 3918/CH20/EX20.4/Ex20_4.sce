//Example 20_4
clc;
clear;
close;

//Given data :
B=2;// Width of foundation in m
Df=1.5;// Depth of foundation in m
Rw=1;
Rwdash=1;
Ndashdash=14;
qult=(1/62)*((2*Ndashdash*Ndashdash*B*Rwdash)+(6*(100+(Ndashdash^2))*Df*Rw));// Ultimate bearing capacity  in kN/m^2
disp(qult,"Ultimate bearing capacity  in kN/m^2");
// The answers vary due to round off error
