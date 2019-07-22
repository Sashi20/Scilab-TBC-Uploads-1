clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 5.5
// Given that
G = 2.5 // Quality grade as defined in ANSI/S2.19 
W = 3.63 // Estimated total tool weight in kg
N = 10000 // Speed of the tool holder in rpm
U = (9549*G*W)/N
printf("The allowable Unbalance for the boring bar = %.2f g mm", U)
// The answers vary due to round off error
