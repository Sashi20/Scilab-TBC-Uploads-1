clc; clear;
// Example 10.1
// Page 289
// Given data
P_in=200; // conc of BOD flowing in, mg/L
e=85; // treatment efficiency, %
Q=5; //flow rate, mgd
//estimation
P_out=P_in-((e*P_in)/100); // allowed maximum conc of BOD, mg/L, eq 10-1 
BOD=8.34*Q*P_out; // discharged BOD, lb/d, eq 6-3b
printf('The maximum conc of BOD allowed = %f mg/L\n',P_out)
printf('The discharged BOD will be = %f lb/d',BOD)
clear




