clc; clear;
// Example 10.5
// Page 296
// Given data
P_in=200; // conc of BOD flowing in, mg/L
e1=79; // removal efficiency of trickling filter, %
e2=35; // removal efficiency of primary treatmet, %
//estimation
C1=((100-e2)*200)/100; // remaining BOD after primary treatment,mg/L
P_out=(100-e1)*C1/100; // conc of BOD flowing out after filter removal, mg/L
e=((P_in-P_out)/P_in)*100
printf('The overall plant efficiency = %f percent',e)
clear




