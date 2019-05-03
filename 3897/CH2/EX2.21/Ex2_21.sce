clc; clear;
// Example 2.21
// Page 44
// Given data
D=300; // dia in mm
S=0.02; // slope
V=1.9; // full floe velocity, m/s, from nomograph
// estimation
Q=135; // flow rate , L/s, from a nomograph for a given D and S values
q=96; // partial flow, from nomograph
d=D*0.62; // for q/Q value from partial flow diagram
v=V*1.08; // partial flow velocity, m/s, from velocity curve
printf('The depth of water d = %f mm\n',d)
printf('The velocity of flow at depth d = %f m/s',v)
clear





