clc; clear;
// Example 3.3
// Page 62
// Given data
RP=10.0; //return period of rainfaal events, year 
T=60.0; // duration of rainfall in min
//estimation
A_cal=1520; // constant values for California, for RP=10-y
B_cal= 13; // constant value for western states, for RP=10-y
A_del=5840; // constant value for Delware, fro RP=10-y
B_del=29; // contant value for Middle Atlantic states, for RP=10-y
i_cal=A_cal/(T+B_cal); // expected rainfall intensity for Calfornia, mm/h
i_del=A_del/(T+B_del); // expected rainfall intensity for Delware, mm/h
printf('The expected rainfall intensity in Calfornia = %f mm/h\n',i_cal)
printf('The expected rainfall intensity in Delware = %f mm/h\n',i_del)
clear




