// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 37.1 - Open-loop Positioning
// Given that
x = 75 
p = 5 // Leadscrew pitch
A_ls = (360*x)/p  // Lead screw rotation angle
r_g = 4
n_s = 48
V_t = 400
n_p = (r_g*n_s*A_ls)/360
N_ls = V_t/p
N_m = r_g*N_ls
f_p = (N_m*n_s)/60 
printf('pulses required to move the table the specified distance = %.0f pulses\n Motor Speed = %.0f rev/min \n Pulse frequency required = %.0f Hz\n',n_p,N_m,f_p)
