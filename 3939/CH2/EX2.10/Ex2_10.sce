clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.10
// Given that
f_t = 0.1 // Feed per tooth in mm
d = 3 // Deep or Depth of cut in mm
p = 12.5 // Thread pitch in mm
L_e = 80 // Length to be broach in mm
w = 12 // Slot Wide in mm
us = 0.07 // Specific energy of the material from Table 2.1 in kW min/cm^3
V = 25 // Cutting speed in m/min 
n_t = d/f_t // Number of teeth 
L_b = p*n_t // Length of broach 
tm = (L_b + L_e)/(V*1000) // Machining time in min, 1000 is for conversion unit for V 
n_te = ceil(L_e/p) // Number of teeth engage with the workpiece
d_e = n_te*f_t // Maximum depth engage of the broaching tool in mm
mrr = d_e*w*V*1000  // Material removal rate in mm^3/min
F_c = ((mrr/1000)*us*60)/V // Force in kN
printf("Number of teeth on the Broach = %.0f teeth,\n Length of the broch = %.0f mm \n The Machining time = %.3f min \n Cutting force = %.1f kN ",n_t,L_b,tm,F_c)
