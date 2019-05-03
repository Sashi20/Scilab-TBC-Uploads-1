clc; clear;
// Example 8.5
// Page 239
// Given data
d=300; // diameter of pipe, mm
D=3; // depth of pipe, m
B=0.60; // trench width, m
w=18.8; // clay unit weight, kN/m^3
//estimation
H=D-(d/100); // pipe cover, m
H_B=H/B; // ratio pf cover to width
C=2.6; // coefficient from figure 8.19
W=C*w*B^2; // dead load due to backfill, kN/m
printf(' The dead load due to backfill = %f kN/m',W)
clear




