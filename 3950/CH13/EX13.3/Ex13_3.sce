// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 13.3 - Shrinkage in Injection Molding
// Given that
S = 0.025 // Shrinkage from Table 13.1
D_p = 80 // Molded part dimension in mm
D_c = D_p + (D_p*S)+(D_p*S^2)
printf('The dimension of the mold cavity that will compensate = %.2f mm \n',D_c)
