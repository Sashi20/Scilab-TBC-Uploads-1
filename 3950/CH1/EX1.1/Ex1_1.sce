// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 1.1 - Equipment cost rate
// Given that
ic = 500000 // Initial cost plus installation in $
n = 7 // Anticipated life in years
w = 50 //number of weeks per year
s = 2 // Number of shift
D = 5 // Number of days in week
h = 8 // Shift hours
Roh = 0.35 // Overhead rate on the equipment in Percentage
H = w*s*D*h // Annual number of hours of Operation in hr/yr
Ceq = (ic/(60*n*H))*(1+Roh)  // Equipment cost rate
printf("\n The Equipment cost rate = $%.3f /min",Ceq) 
