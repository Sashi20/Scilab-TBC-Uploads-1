clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 5.4
// Given that
U = 30 // Unbalance in mm
N = 15000 // Speed of the tool holder in rpm
F_r = (U*((2*%pi*N)/60)^2 )*10e-7  // Unbalance force reduction in N
printf("The Unbalance force reduction = %.0f N", F_r)
// The radial force for 30 g mm unbalance at 15000 rpm is 74N and for 75 g mm unbalance the force becomes 185 N. Hence the force reduction is significant if a pre-balanced tool holder is used
