//Example 17_1
clc;
clear;
close;

//Given data :
disp("a)");
uw=20;// Unit weight of sand in kN/m^3
d=2;// Depth in m
pi=uw*d;// Magnitude of pi at 2 m depth in kN/m^2
u=10*(d-1);// Magnitude of u at 2 m depth in kN/m^2
pidash=pi-u;// magnitude of pidash at 2 m depth in kN/m2
CN=1.4;// Value of CN from Fig 17.14
N=5;// Observed value of N
Ndash=CN*N;// value of Ndash
// 7<15 therefore no dilatency correction needs to be applied
Ndashdash=Ndash;// Correct value of N
disp(Ndashdash,"Correct value of N is");

disp("b)");
uw=20;// Unit weight of sand in kN/m^3
d=15;// Depth in m
pi=uw*d;// Magnitude of pi at 15 m depth in kN/m^2
u=10*(d-1);// Magnitude of u at 15 m depth in kN/m^2
pidash=pi-u;// magnitude of pidash at 15 m depth in kN/m2
CN=0.82;// Value of CN from Fig 17.14
N=21;// Observed value of N
Ndash=CN*N;// value of Ndash
// 17>15 therefore dilatency correction needs to be applied
Ndashdash=15+((Ndash-15)/2);// Correct value of N
disp(Ndashdash,"Correct value of N is");
// The answers vary due to round off error
