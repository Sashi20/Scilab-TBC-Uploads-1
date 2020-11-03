// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 1.3 - Scrap rate
// Given that
Q = 1000 // Ordered batch parts
q = 0.04 // Scrap rate for the type of part in percentage
Qo = Q/(1-q) // Required quantity of parts to be delivered
printf('Number of parts required = %.0f \n',Qo)
