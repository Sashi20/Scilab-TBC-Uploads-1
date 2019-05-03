clc; clear;
// Example 6.2
// Page 157
// Given data
TD=3; // detention time, hour
Q=6; // flow rate, mgd
A=10000; // surface area of tank, ft^2
//estimation
Q=Q*10^6*(1/24); // floq rate, gal/h
V=TD*Q; // Volume of tank, gal
V=V/7.5; // volume of tank, ft^3
D=V/A; // depth of water in tank, ft
printf('The required volume of tank = %f ft^3\n',V)
printf('The depth of water in tank = %f ft',D)
clear




