clc; clear;
// Example 10.2
// Page 290
// Given data
P_in=250; // conc of BOD flowing in, mg/L
P_out=20; // conc of BOD flowing out, mg/L
Q=5; //flow rate, ML/D
//estimation
e=(P_in-P_out)/P_in*100; // treatment efficiency, %, eq 10-1
SS=Q*P_out; // suspended solid present in diacharge, kg


printf('The treatment efficiency = %f percent\n',e)
printf('The suspended solid present in discharge = %f kg',SS)
clear




