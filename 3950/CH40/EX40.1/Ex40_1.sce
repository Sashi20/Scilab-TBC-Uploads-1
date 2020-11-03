// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 40.1  - X and R charts
// Given that 
m = 8
n = 4
A2 = 0.729 // Data from Table 40.2
D3 = 0 // Data from Table 40.2
D4 = 2.282 // Data from Table 40.2
x = [2.008 1.998 1.993 2.002 2.001 1.995 2.004 1.999]
R = [0.027 0.011 0.017 0.009 0.014 0.020 0.024 0.018]
s = [1 2 3 4 5 6 7 8] // Sample size
x_bar = mean(x)
R_bar = mean(R)
LCL = x_bar - (A2*R_bar)
UCL = x_bar + (A2*R_bar)
LCL = D3*R_bar
UCL = D4*R_bar
plot(s,x)
plot(s,R)
xtitle("Control Chart","Sample number, s","X-chart R-chart")
