clc; clear;
// Example 4.3
// Page 104
// Given data
BOD5=180; // 5 days BOD mg/L
t=5; // time, d
k=0.1; // rate of BOD reaction
//estimation
BODL=BOD5/(1-10^(-k*t))
printf('The ultimate BOD = %f mg/L',BODL)
clear




