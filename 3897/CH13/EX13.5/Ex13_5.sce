clc; clear;
// Example 13.5
// Page 441
// Given data
AF_ini= 55; // initial airflow in ft^3/min
AF_aft= 35; // after sampling in ft^3/min
T= 24; // duration in hours
m= 10; // filter weight before sampling in gram
M= 10.2; //filter weight after sampling in gram

//estimation 
M_diff=M-m; //weight of particulates in gram
AF_avg=(AF_ini+AF_aft)/2; // average airflow
T=24*60; //duration in minutes
V=AF_avg*T; // air volume in cubic feet
V_m3= V*0.02832; // air volume in cubic meter
M_microgram= M_diff*(10^6); //weight of particulates in microgram
TSP=M_microgram/V_m3; // total suspended particulate concentration in microgram/m^3
printf('total suspended particulate concentration  = %f microgram/m^3\',TSP)
clear




