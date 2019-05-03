clc; clear;
// Example 8.6
// Page 239
// Given data
SSS=18; // safe supporting srength, kN/m
CS= 26.3; // crushing strength, kN/m
SF=1.5; // safety factor 
//estimation
LF=(SF*SSS)/CS; // load factor
printf('The load factor = %f \n',LF)
disp(' according to load factor, the class D bedding will be adequate.')
clear




