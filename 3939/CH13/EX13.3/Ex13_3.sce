clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 13.3
// Given that
L = 200 // Length of the bar in mm
L_e = 2 // Approach length in mm assumed
L_t = 80
f_rapid = 6000 // Feed in mm/min from the Table 13.1
C_o = 1 // it was given 60$/h from the Table 13.1, when convert to min
nt = 3 // Number of cutting edges per insert
cte = 9 // Tool cost in dollars per insert
f = 0.3 // Feed rate in mm/rev from the Table 13.1
fh = 0.5 // Maximum allowable feed rate in mm/rev given in example 13.3
a = 0.5 // Exponent 
D = 70 // Diameter of the bar in mm
t_h = 20 // Part load/unload time in seconds
t_l = 1 // Tool load/unload time in Minutes
t_cs = 8 // Tool interchange time between operations in seconds
n = 0.25 // Tool life exponent from the Table 13.1
Kt = 500 // Tool life constant from the Table 13.1
t_x = (L+L_t)/f_rapid
C_te = cte/nt // Per cutting edge in dollars
V_opc = Kt/((fh^a)*((((1-n)/n)*(t_l+(C_te/C_o)))^n))
N = (V_opc*1000)/(%pi*D)
t_m = (L+L_e)/(fh*N) // Machining time in min
T = Kt^4*(V_opc^-4)*(fh^-2) // Tool life in min VT^n = Ct
// The answer in the textbook is wrong
C_u = C_o*t_m + ((t_m/T)*((C_o*t_l)+C_te))+(C_o*((t_cs/60)+(t_h/60)+t_x))
printf("The Production cost = $ %.2f, \n The production cost is reduced from $1.51 to $ %.3f by using an optimum cutting speed",C_u,C_u)
