// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 32.2 - Cost per piece in additive manufacturing
// Given that
w = 50 // Weeks
d = 5 // days
h = 8 // hours per day
y = 4 // years
C_l = 24 // Labor rate
U_l = 0.25 // labor build cycle
T_c = 3.777 // Cycle time
T_pp = 6/60 // 6 min/part post processing time, 60 is divided for minutes
h1 = 52
t = 5
H = h1-t // height of wall
b = 40
A1 = b^2 // Cross-sectional area of the base
A2 = b^2 - 32^2
C = 100000 // Cost of Stereolithography machine
NH = w*d*h // Numbers of hours of operation per year
MC = 120
C_eq = C/(y*NH) // Hourly equipment cost
V1 = d*A1
V2 = H*A2
V = V1+V2
C_m = (MC*10^-6)*(V)
C_pc = C_m + (((C_l*U_l)+C_eq)*T_c)+(C_l*T_pp)
printf('Cost per piece = $ %.2f /pc \n',C_pc)
