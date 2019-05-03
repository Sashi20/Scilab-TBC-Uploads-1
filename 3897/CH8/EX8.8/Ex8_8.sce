clc; clear;
// Example 8.8
// Page 242
// Given data
I=45; // infiltration rate, L/d/mm/km
d=200; // diameter of lateral sewer, mm
L=1500; // length of sewer, m
//estimation
I=I*d*(L/1000); // infiltration, L/d
Q=19; // discharge, L/s, from manning's nomograph
Q=Q*3600*24; // discharge, L/d
RI=(I/Q)*100; // rate of infiltration, percent 
printf(' The rate of infiltration = %f percent',RI)
clear




