clc; clear;
// Example 7.11
// Page 207
// Given data
Q_AB=450; // flow rate in section AB, L/s
D_AB=8; // diameter in section AB, inch
S_AB=0.0064; // from Hazen-Williams nomograph, for section AB
L_AB=1500; // length of section AB, m, from figure

Q_BC=450; // flow rate in section BC, L/s
D_BC=12; // diameter of section BC, inch
S_BC=0.001; // from Hazen-Williams nomograph for section BC
L_BC=2500; // length of section BC, m, from figure
//estimation
hL_AB=S_AB*L_AB; // head loss in section AB, ft
hL_BC=S_BC*L_BC; // head loss in section BC, ft
HL=hL_AB+hL_BC; // total head loss from A to C, ft
S=HL/(L_AB+L_BC); // overall hydraulic gradient
D=9.5; // diameter for Q=450 and S=0.003, from monogaph
printf('The equavalent diameter = %f inch',D)
clear




