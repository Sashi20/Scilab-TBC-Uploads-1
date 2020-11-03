// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 11.2 - Rotation speed in true centrifugal casting
// Given that
D = 0.25 // Diameter of the mold in m
g = 9.8 // Acceleration of gravity
GF = 65  // G-factor
N = (30/%pi)*sqrt((2*g*GF)/D)
printf('Rotational Speed = %.1f rev/min',N)
