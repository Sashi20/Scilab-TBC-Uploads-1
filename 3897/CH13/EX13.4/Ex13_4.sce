clc; clear;
// Example 13.4
// Page 441
// Given data
M=120; // mass of dustfall bucket when empty
m=120.30; //mass of dustfall bucket after exposure
d= 6; // diameter of bucket in inch
D=0.5; //diameter in feet
E=1; // exposure is 1 month

//estimation 
A=3.14*(D^2)/4; // area of the bucket in square feet
M_diff= (m-M); // mass of particulates
D_unit1=(((M_diff)/E)*(1/454)*(1/2000))/(A*(1/5280)^2); //dustfall in tons/square mi/month
D_unit2=(((M_diff)/E)*(1/1000))/(A*(0.305^2)*(1/10000)); //dustfall in kg/ha/month
printf('dustfall  = %f tons/square mi/month\n',D_unit1)
printf('dustfall = %f kg/ha/month',D_unit2)
clear




