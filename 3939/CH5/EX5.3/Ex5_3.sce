clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 5.3
// Given that
W_spindle = 20 // Mass of the spindle in kg
W_holder = 1.27 // Mass of the toolholder in kg
W_tool = 0.35 // Mass of the tool in kg
G = 1.17 // Quality grade as defined in ANSI/S2.19 
rpm_spindle = 29250 // Maximum operating speed (r/min) from the graph in Fig. 5.82
rpm_holder = 11697 // Maximum operating speed (r/min) from the graph in Fig. 5.82
rpm_tool = 4644 // Maximum operating speed (r/min) from the graph in Fig. 5.82
U_spindle = (9549*G*W_spindle)/rpm_spindle
U_holder =  (9549*G*W_holder)/rpm_holder
U_tool =  (9549*G*W_tool)/rpm_tool
U_total = U_spindle + U_holder + U_tool
printf("The total balancing grade of an assembled \n spinlde-toolholder-tool system = %.3f g mm",U_total)
