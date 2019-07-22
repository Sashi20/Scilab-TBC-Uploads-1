clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 3.1
// Given that
k_s = 140 // Stiffness of the ball screw in N/um
k_g = 25 // Stiffness of the Gimbal joint in N/um
k_t = 1/((1/k_s)+(2*(1/k_g)))  
printf("The Stiffness of the strut = %.1f N/um",k_t)
