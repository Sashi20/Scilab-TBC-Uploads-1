clc; clear;
// Example 9.9
// Page 270
// Given data
P=100; //peak outflow, cfs
Pin=150; // peak inflow, cfs
TRV=300000; // total rainfall volume, ft^3
//estimation
FF=P/Pin; // flow factor
SF=1-FF; // storage factor
V=SF*TRV; // storage volume, ft^3
printf('The storage volume = %f ft^3',V)
clear




