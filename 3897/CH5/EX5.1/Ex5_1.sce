clc; clear;
// Example 5.1
// Page 129
// Given data
cs=2; // original stream concentration, mg/L
Qs=40; // stream discharge, ML/d
cw=25; // waste concentration, mg/L
Qw=4.0; // waste discharge, ML/d
//estimation
cd=(cs*Qs+cw*Qw)/(Qs+Qw); // diluted 5 days BOD concen from eq 5-1, mg/L
printf('The diluted 5 days BOD= %f mg/L',cd)
clear




