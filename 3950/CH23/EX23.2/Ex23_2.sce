// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 23.2 - Surface Roughness
// Given that
r = 1.2 // Nose radius in mm
v = 100 // Cutting speed
f = 0.25 // Feed
R_i = ((f^2)/(32*r))*1000 // Ideal surface roughness, 1000 for micron meters
R_a = 1.25 * R_i // Figure 23.2, the ratio of actual to ideal roughness for ductivle material at 100 m/min is approximately 1.25
printf('The Actual Surface roughness = %.f um \n',R_a)
