clc; clear;
// Example 7.12
// Page 208
// Given data
hL=10; // head loss, m
L_AIB=500; // length of branch AIB, m
L_AIIB=1500; // length of branch AIIB, m
D_AIB=300; // diameter of branch AIB, mm
D_AIIB=200; // diameter of branch AIIB, mm
//estimation
S_AIB=hL/L_AIB; // hydraulic gradient on branch AIB,
Q_AIB=143; // flow in branch AIB for S_AIB=0.02 and D_AIB=300 mm, L/s
S_AIIB=hL/L_AIIB; // hydraulic gradient on branch AIIB,
Q_AIIB=27; // flow in branch AIB for S_AIIB=0.0067 and D_AIB=200 mm, L/s
Q=Q_AIB+Q_AIIB; // total flow into junction A
S=hL/L_AIB; // overall gradient
D=320; // equivalent diameter for Q=170 L/s and S=0.02 from monograph, mm
printf('The equavalent diameter = %f mm',D)
clear




