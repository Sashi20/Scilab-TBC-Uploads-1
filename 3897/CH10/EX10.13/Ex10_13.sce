clc; clear;
// Example 10.13
// Page 328
// Given data
E=0.5; // TSS removal efficiency, in decimal
TSS=240; // raw TSS, mg/L
Q=4; // Flow, ML/d
E_BOD=30; // removal efficiency of BOD, percent
bod=220; //raw BOD
K=0.25; //proportion of BOD convertred, from  equation 10-9a
// estimation
m1=E*TSS*Q; // mass of primary sludge solids, kg/d, from equation 10-8a
BOD=(1-E_BOD/100)*bod; // BOD applied to the secondary system, mg/L
m2=K*BOD*Q; // mass of secondary sludge, kg/d, from equation, 10-9a
M=m1+m2; // total mass of combind primary and secondary sludge, kg/d
V=M/Q*100; // total volume of sludge, L/d, from equation 10-7a
V=V/10^3; // total volume of sludge, m^3/d

printf('Mass of primary sludge solids = %f kg/d\n',m1)
printf('Mass of secondary sludge solids = %f kg/d\n', m2)
printf('Total volume of sludge solids = %f m^3/d', V)
clear
