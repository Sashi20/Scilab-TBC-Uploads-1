//Example 30_3
clc;
clear;
close;

//Given data :
T=10;// Thickness of clay in m
Cc=0.7;
Cvz=0.6;// in m^2/yr
Cvr=1.2;// in m^2/yr

disp("a)");
T90=0.848;// Time factor From figure 9.7
H=5;// Drainage path in m
t90=T90*H*H/Cvz;// Time for 90% consolidation of soft clay without sandwicks in years
disp(t90,"  Time for 90% consolidation of soft clay without sandwicks in years");
// The answers vary due to round off error

disp("b)");
S=1;
R=1.06*S/2;// Radius in m
r0=(100/2)/1000;// Radius of sandwick in m
r=R/r0;
// From Table 30.4
// R/r0=10 & T90=0.455
r=10;
T90=0.455;// Time factor
t90=T90*(2*R*2*R)/Cvr;// Time for 90% consolidation of soft clay with sandwicks in years
disp(t90,"  Time for 90% consolidation of soft clay with sandwicks in years");
// The answers vary due to round off error
