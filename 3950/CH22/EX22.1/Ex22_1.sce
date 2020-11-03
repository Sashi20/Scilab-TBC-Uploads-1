// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 22.1 - Taylor Tool life equation
// Given that
v1 = 160
T1 = 5
v2 = 100
T2 = 41 
// 160(5)^n = 100(41)^n
// Taking natural logarithms of each term
n = (log(v1)-log(v2))/(log(T2)-log(T1))
C = v1*(T1)^n
printf('The values of n and C are = %.3f & %.0f',n,C)
