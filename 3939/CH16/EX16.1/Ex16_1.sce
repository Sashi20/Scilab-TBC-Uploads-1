clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 16.1
// Given that
deflection_y = 0.01 // Curvature of the x-axis in the y-direction in mm
X = 1000
P = 600  // Offset of the part feature to be machined in mm
theta_x = (8*deflection_y)/X
delta = P*sind(theta_x/2)
printf("The Magnitude of the Abbe error = %.6f mm",delta)
// The answers vary due to round off error
