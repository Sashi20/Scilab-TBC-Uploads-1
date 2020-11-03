// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 23.4 - Production rate and cost in machining economics
// Given that
n= 0.125  // Taylor's tool life exponent
C = 70  // From Table 23.2
T_t = 2 // Tool change time in min
C_o = 30/60 // Converting $30/hr to $0.50/min
C_t = 3 // Tooling cost
D = 0.1 // Diameter
L = 0.5 // Work part length
f = 0.25  // feed in mm/rev
T_h = 5 // Handling time per piece
v_max = C/((((1/n)-1)*T_t)^n) // Cutting speed for maximum production in m/min
v_min = C*((n/(1-n))*(C_o/((C_o*T_t)+C_t)))^n  // Cutting speed for minimum production cost per piece in m/min
T_m = (%pi*D*L)/(v_max*f*10^-3) // Machining Time in minutes
T = (C/v_max)^8  
n_p = T/T_m // Number of pieces per tool
T_c = T_h + T_m +(T_t/n_p) // Average production cycle time for the operation
R_p = 60/T_c // Hourly production rate
C_c = (C_o*T_h)+(C_o*T_m)+((C_o*T_t)/n_p)+(C_t/n_p)
T_m_min = (%pi*D*L)/(v_min*f*10^-3)
T_min = (C/v_min)^8   // Tool life in minutes
n_p_min = T_min/T_m_min // Number of pieces per tool
T_c_min = T_h + T_m_min +(T_t/n_p) // Average production cycle time for the operation
R_p_min = 60/T_c_min // Hourly production rate
C_c_min = (C_o*T_h)+(C_o*T_m_min)+((C_o*T_t)/n_p_min)+(C_t/n_p_min)

printf('Hourly Production Rate = %.1f pc/hr \n Average cost per piece = %.2f /pc \n Hourly Production Rate for min cutting speed = %.1f pc/hr \n Average cost per piece for minimum cutting speed= %.0f /pc',R_p,C_c,R_p_min,C_c_min)
// Answers may vary due to round of error
