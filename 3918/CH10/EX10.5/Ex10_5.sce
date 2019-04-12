//Example 10_5
clc;
clear;
close;

//Given data :
C=2/1000000;// Coefficient of Consolidation in m^2/min
ts=1;// Thickness of sand layer in m
H=6;// Thicknes of clay layer in m
T50=0.197;// Time Factor Corresponding to 50% consolidation
T90=0.848;// Time Factor Corresponding to 90% consolidation
t50=T50*H*H/(C*60*24*30*12);// Time taken for 50% consolidation to take place in years
t90=T90*H*H/(C*60*24*30*12);// Time taken for 90% consolidation to take place in years
disp(t50,"Time taken for 50% consolidation to take place in years");
disp(t90,"Time taken for 90% consolidation to take place in years");
// The answers vary due to round off error
