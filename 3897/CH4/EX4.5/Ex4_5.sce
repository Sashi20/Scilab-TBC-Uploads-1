clc; clear;
// Example 4.5
// Page 106
// Given data
A=40.545; // weight of dish plus residue, g
B=40.525; // weight of empty dish, g 
V=100; //  volume of the sample, mL
//estimation
A=A*1000; // weight of dish plus residue, mg
B=B*1000; // weight of empty dish, mg 
TDS=(A-B)*1000/V; // total dissolved solids, mg/L
printf('The TDS = %f mg/L',TDS)
clear




