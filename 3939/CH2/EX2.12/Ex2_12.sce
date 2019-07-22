clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.12
// Given that
D = 10 // Diameter of the drill in mm
f = 0.3 // Feed of the drill in mm/rev
V = 200 // Cutting speed in m/min 
L = 30 // Length of hole to be drilled in mm
row = 60 // Drill point angle in degrees, in question it was 120, divided by 2 is row
delta_L = 3 // Assume the approach and over travel distance for the drill as 3mm
us = 0.008 // For magnesium alloys specific cutting energy from Table 2.1 0.008 W.min/cm^3
N = (V*1000)/(%pi*D) // Speed of the drill in rev/min so conversion unit 1000 multiplied
fr = N*f // Feed rate
mrr = ((%pi*(D^2))/4)*fr // Material removal rate in mm^3/min, need in cm^3/min divide by 1000
tm = (L+(D/tand(row))+delta_L)/fr // Cutting time in min, if multiplied by 60 cutting time will be in seconds
P = mrr*us // Power required to drill the hole in N.m/s
T = P*60 / (2*%pi*N) // Torque on the drill in N.m, Muliplied by 60 for conversion to s/min
printf("\n The Material Removal Rate = %.0f mm^3/min \n The Cutting time = %.2f min  \n The Torque on the drill = %.1f N m",mrr,tm,T)
