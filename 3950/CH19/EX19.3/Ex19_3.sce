// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 19.3 - Cup Drawing
// Given that
D_b = 138 // Starting blank size in mm
D_p = 75 // Cup inside diameter in mm
t = 2.4 // Stock thickness in mm
DR = D_b/D_p // Drawing ratio
r = (D_b-D_p)/D_b // reduction
check = (t/D_b)*100 
printf('The drawing ratio = %.2f \n',DR)
if DR <= 2 then
    printf('The Drawing operation is Feasible')
else
    printf('The Drawing operation is Not-Feasible')
end
// Answer varies due to round off error
