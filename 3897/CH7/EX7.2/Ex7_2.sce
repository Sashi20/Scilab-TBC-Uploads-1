clc; clear;
// Example 7.2
// Page 191
// Given data
D=18; // diameter of pipe, inch
delta=90; // chnage in the direction of pipe, degress
P=80; // water pressure, lb/ft^2
S=3000; // bearig stress, lb/ft^2
//estimation 
A=%pi*D^2/4; // area of pipe section, in^2
F=2*A*P*sin(delta*%pi/(180*2)); // statis thrust, lb, from eq 7-2
AT=F/S; // area of thrust, ft^2
printf('The static thrust = %f lb\n',F)
printf('The thrust area = %f ft^2',AT)
clear




