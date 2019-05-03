clc; clear;
// Example 4.4
// Page 105
// Given data
DO0=8.5; // initial DO, mg/L
DO5=5.0; // Do after 5 days, mg/L
V=6; // volume of sample, mL
t=5; // time, d
k=0.1; // rate of reaction
//estimation
BOD5=(DO0-DO5)*300/V; // BOD5 mg/L, from eq 4-3
BODL=BOD5/(1-10^(-k*t)); // ultimate BOD, mg/L, from eq 4-2
printf('The 5-days BOD = %f mg/L \n',BOD5)
printf('The ultimate BOD = %f mg/L',BODL)

clear




