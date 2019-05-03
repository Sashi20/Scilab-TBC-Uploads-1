clc; clear;
// Example 2.9
// Page 35
// Given data
Da=1; // diameter at branch A in ft
Db=1/3; // diameter at branch B in ft
Dc=0.5; // diameter at branch C in ft
Va=1.0; // velocity at branch A in ft/s
Vb=5.0; // velocity at branch B in ft/s
// estimation
Aa=%pi*(Da)^2/4; // flow area at branch A in ft^2
Ab=%pi*(Db)^2/4; // flow area at branch B in ft^2
Ac=%pi*(Dc)^2/4; // flow area at branch C in ft^2
Qa=Aa*Va; // flow rate at branch A in ft^3/s
Qb=Ab*Vb; // flow rate at branch B in ft^3/s
Qc=Qa-Qb; // flow rate at branch C is diff of Qa & Qb, ft^3/s
Vc=Qc/Ac; // velocity at branch C in ft/s
printf('Velocity at branch C = %f ft/s',Vc)
clear


