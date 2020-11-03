// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 23.3 - Determining cutting speeds in machining economics
// Given that
n= 0.125 // Taylor's tool life exponent
C = 70  // From Table 23.2
T_t = 2 // Tool change time in min
C_o = 30/60 // Converting $30/hr to $0.50/min
C_t = 3 // Tooling cost
v_max = C/((((1/n)-1)*T_t)^n)
v_min = C*((n/(1-n))*(C_o/((C_o*T_t)+C_t)))^n
printf('Cutting speed for maximum production rate = %.0f m/min\nCutting Speed for minimum cost = %.0f m/min',v_max,v_min)
