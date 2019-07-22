clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.8
// Given that
L = 400 // Lenght of the part in mm
P = 10 // Maximum available cutting power in kW
us = 0.07 // Specific energy forthe workpiece material from Table 2.1 in W.min/cm^3
d = 15 // Radial depth of cut in mm
b = 10 // Width of cut in mm
V = 80 // Cutting speed in m/min
D = 200 // Diameter of the carbide brazed side milling cutter in mm
R = 100 // Radius of the carbide brazed side milling cutter in mm
nt = 16 // Number of inserts on the cutter
n_t = 8 // Number of inserts which are one side of the cutter
a_max = 0.2 // Maximum uncut chip thickness in mm
L_e = 52.7 // Approach distance in mm
mrr = P / us // Material removal rate in cm^3/min
fr = (mrr*1000) / (d*b) // Feed rate in mm/min
N = V*1000/(%pi*D) // Speed of the spindle in rpm
ft = fr / (nt*N) // Feed rate for the cutter in mm/rev/tooth
V_m = acosd((R-d)/R)
f_t = a_max/sind(V_m) // Maximum feed per tooth allowed in mm/rev/tooth
tm = (L+L_e+10)/(nt*f_t*N)
t_m = (L+L_e+10)/(n_t*f_t*N)
printf("\n Maximum feed per tooth allowed = %.3f mm^/rev/tooth,\n Machining time to groove the part = %.3f min,\n Machining time to groove the part with 8 inserts = %.3f min",f_t,tm,t_m)
// If the cutter has 16 inserts in total, the effective number of teeth is 8 because 8 inserts on one side of the cutter and 8 overlapping inserts on the other side are used to remove the full width of 10 mm
