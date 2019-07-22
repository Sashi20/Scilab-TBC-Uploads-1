clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.13
// Given that
D = 150 // Diameter of the wheel in mm
V = 2000 // Cutting speedin m/min
V_work = 2200 // Velcoity of the work in mm/min
doc_total = 0.2 // Depth to be ground 
d = 0.01 // Grinding depth in mm/pass
Lp = 350 // Length of the workpiece in mm
b = 75 // Width of the workpiece in mm
La = 40
mrr = b*d*V_work
tmp = (Lp+D+La)/mrr // Time to trvel across the part length 
tm = ((doc_total/d)*tmp)+tmp
 printf("\nThe Material Removal Rate = %.2f mm^3/min,\n The Machining time =  %.2f min ",mrr,tm) 
// The answers vary due to round off error
