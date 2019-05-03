clc; clear;
// Example 10.10
// Page 321
// Given data
NB=4; // number of bedroom
PR=30; // perc rate, min/inch
Tr=2; // width of trench, ft
AA=250; // absorption area required for per bedroom, from Fig 10.34
//estimation
TA=NB*AA; // total area required for four bedroom
T=TA/Tr; // required trench, ft
L=T/100; // number of lateral
WAF=(L-1)*6; // wodth of absorption field
LF=WAF*100; // the area will be occupy by leaching field, ft^2
printf('The dimension of leaching filed = %f ft^2',LF)
clear




