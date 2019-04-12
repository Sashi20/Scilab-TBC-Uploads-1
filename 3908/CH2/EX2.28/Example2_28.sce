//Example 2_28
clc;
clear;
close;

//Given data :
// Triangles AED and CED are similar
// AE/DE = DE/EC
DE=32;// Length of DE in m
EC=40;// LEngth of EC in m
AE=DE^2/EC;// Length of AE in m
CA=EC+AE;// Length of CA in m
disp(CA,"Length of CA in m");
// The answer provided in the textbook is wrong

// Triangles BGF and CGF are similar
// BG/GF = GF/CG
GF=36;// Length of GF in m
CG=44;// LEngth of CG in m
BG=GF^2/CG;// Length of BG in m
CB=CG+BG;// Length of CB in m
disp(CB,"Length of CB in m");

// Triangles CAB and CHJ are similar
// CH/CA = CJ/CB=0.25
// Therefore HJ/AB=0.25
HJ=23.6;// Length of HJ in m
AB=HJ/0.25;// Length of AB in m
disp(AB,"Length of AB in m");
