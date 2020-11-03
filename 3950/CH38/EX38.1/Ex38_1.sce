// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 38.1  - Manual Assembly Line
// Given that 
D_a = 90000 // Annual Demand
S_w = 5 // Number of Shifts/wk
H_sh = 8 // Hours/shift
T_r = 0.150 // In question given repositioning time as 9 sec, converted to min
R_p = D_a/(50*S_w*H_sh)
E = 0.95
T_wc = 55 // Work content time
E_b = 0.93 // Balancing Efficiency
T_c = (60*E)/R_p
T_s = T_c - T_r
w = T_wc/(T_s*E_b)
w_min = T_wc/T_c //Minimum possible number of workers
printf('Hourly Production rate to meet demand = %.0f units/hr \n Number of workers and Workstations required = %.0f Workers and %.0f Workstations \nIdeal minimum value = %.2f Workers\n',R_p,w,w,w_min)
