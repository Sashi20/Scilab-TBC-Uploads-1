clc; clear;
// Example 4.2
// Page 97
// Given data
w=8.0; // water, mil gal 
C=0.2; // required concentration, mg/L
//estimation
C=C*8.34; // required concentration in lb/mil gal
chl=C*w; // chlorine, pounds
printf('The required qunatity of chlorine= %f lb',chl)
clear




