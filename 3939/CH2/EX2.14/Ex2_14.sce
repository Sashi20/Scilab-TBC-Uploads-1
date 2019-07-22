clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.14
// Given that
Dw = 75 // Diameter of the workpiece in mm
d = 0.015 // Grinding depth in mm/pass
fr = 1500 // Traverse feed rate in mm/min
us = 0.08 // Specific cutting energy in kW min/cm^3 
doc_total = 0.2 // Depth to be ground or Total depth of cut in mm
Lp = 200 // Length of the bar to be performed in mm
Wt = 25 // Wheel Thickness in mm
La = 8 // Overall travel distance from both ends of the workpiece
mrr = %pi*Dw*d*fr/1000 // Material removal rate in cm^3/min divide with 1000
// The specific energy for grinding should be much larger than that give in Table 2.1 based on turngin test. Therefore the value of 0.08 kW min/cm^3 for cast iron from Table 2.1 should be multiplied by five times for grinding operations for a rough estimaate.
P = mrr*(5*us) // Estimated power required 
tmp = (Lp+Wt+La)/fr // Time to travel across the part length in min/pass
tm = (doc_total*tmp/d)+(2*tmp) // The machining time in minutes
tmp = (Lp+Wt+La)/fr // Time travel across the part length (to perform one pass) in min/pass
printf("\nThe Power required to grind = %.2f kW,\n The Machining time =  %.2f min, \n Time travel across the part length (to perform one pass) = %.3f min/pass",P,tm,tmp) 
// The answers vary due to round off error
