clc; clear;
// Example 10.4
// Page 295
// Given data
D=18; // dia of filter, m
d=2; // depth of filter, m
R= 1.5; // recirculation ratio
Q=2.5; // flow, ML/D
P_in=210; // conc of BOD flowing in, mg/L
e=30; // removal efficiency, %
//estimation
As=%pi*D^2/4; // surface area of filter, m^2
V=As*d; // volume, m^3
QR=R*Q; // recirculated flow, ML/D, eq 10-2
hl=(Q+QR)/As*10^3; // hydraulic load, m^/m^2-d
P_out=P_in-((e*P_in)/100); // conc of BOD flowing out, mg/L
OG=Q*P_out/V; // organic load, kg/m^3-d, eq 10-4a
printf('The hydraulic load on the filter = %f m^3/m^2-d\n',hl)
printf('The organic load on the filter = %f kg/m^3-d',OG)
clear




