clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.2
// Given that
D_one = 50 //Initial diamter in mm
f = 0.4 // Feed for the tool in mm/rev
d = 4 // Depth of cut in mm
v = 70 // Cutting speed in m/min
u_s = 0.065  // Specific cutting energy is obtained from Table 2.1 units kW/cm^3/min
L = 150 // Axial length of the outer diameter in mm
La = 3 // Approach distance in mm (assumption)
D_two = D_one - (2*d) 
N = (2*v*1000)/(%pi*(D_one+D_two)) // The Speed (rpm) - 1000 value is for the conversion 1000 mm/m
tm = (L+La)/(f*N) // Machining time in Minutes
tm_s = ((L+La)/(f*N))*60
printf("\nThe Machining time  = %.3f min, \nThe Machining time in Seconds  = %.1f s",tm,tm_s) 
// The answers vary due to round off error
