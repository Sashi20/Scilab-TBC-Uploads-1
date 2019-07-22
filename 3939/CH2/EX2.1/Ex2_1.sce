clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.1
// Given that
D_one = 50 //Initial diamter in mm
f = 0.4 // Feed for the tool in mm/rev
d = 4 // Depth of cut in mm
v = 70 // Cutting speed in m/min
u_s = 0.065  // Specific cutting energy is obtained from Table 2.1 units kW/cm^3/min
mrr = v*f*d // Material Removal Rate and 1000 mm/m is for the conversion
P = mrr*u_s // The machining power required in the turning operation 
D_two = D_one - (2*d) 
N = (2*v*1000)/(%pi*(D_one+D_two)) // The Speed (rpm) - 1000 value is for the conversion 1000 mm/m
T = (P*1000*60)/(2*%pi*N)  // Spindle Torque
printf("\n The Material Removal Rate = %.0f cm^3/min, \n The Machining Power = %.2f kW, \n Torque required by the Spindle = %.0f N m",mrr,P,T) 
// The answers vary due to round off error
