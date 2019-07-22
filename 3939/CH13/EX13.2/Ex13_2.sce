clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 13.2
// Given that
L = 200 // Length of the bar in mm
L_e = 2 // Approach length in mm assumed
L_t = 80
f_rapid = 6000 // Feed in mm/min from the Table 13.1
C_o = 1 // it was given 60$/h from the Table 13.1, when convert to min
nt = 3 // Number of cutting edges per insert
cte = 9 // Tool cost in dollars per insert
f = 0.3 // Feed rate in mm/rev from the Table 13.1
N = 700 // Spindle rpm from the Table 13.1
D = 70 // Diameter of the bar in mm
t_h = 20 // Part load/unload time in seconds
t_l = 1 // Tool load/unload time in Minutes
t_cs = 8 // Tool interchange time between operations in seconds
n = 0.25 // Tool life exponent from the Table 13.1
ct = 500 // Tool life constant from the Table 13.1
t_m = (L+L_e)/(f*N) // Machining time in min
V = %pi*D*N/1000  // Cutting speed in m/min
T = ct^4*(V^-4) // Tool life in min VT^n = Ct
t_x = (L+L_t)/f_rapid
C_te = cte/nt // Per cutting edge in dollars
C_u = C_o*t_m + ((t_m/T)*((C_o*t_l)+C_te))+(C_o*((t_cs/60)+(t_h/60)+t_x))
printf("The Production cost = $ %.2f",C_u)
