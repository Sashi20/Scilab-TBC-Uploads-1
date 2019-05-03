clc; clear;
// Example 2.26
// Page 47
// Given data
b=18; // base width of weir in inch
h=9; // head on the weir in inch
// estimation
b=b/12; // width of wier in ft
h=h/12; // head on the weir in ft
Q=3.4*b*h^1.5; // discharge over Cipoletti wier from equation 2-13
printf('The discharge Q = %f ft^3/s\n',Q)
clear








