clc; clear;
// Example 2.4
// Page 31
// Given data
P= 30; // pressure at tank in kPa
// estimation
// part (a)
h=0.10*P; // m, using equation 2-3a
printf('The pressure head of water at tank bottom = %f m\n',h)
// part (b)
printf('The water would rise in vertical tube = %f m\n',h)
// part (c)
printf('The pressure in the trapped air = %f kPa\n',P-9.8)
clear
