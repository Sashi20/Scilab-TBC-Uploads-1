clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.5
// Given that
D = 50 // Diameter of the cutter in mm
IC = 17 // IC size of the round inserts in mm
d = 3 // Depth of cut in mm
nt = 3 // Number of inserts
V = 150 // Cutting speed in m/min
amax = 0.2 //  Maximum uncut chip thickness in mm/tooth feed
De = D - IC + sqrt((IC^2)-((IC-(2*d))^2)) // The Effective tool diameter 
vm = acosd(1-((2*d)/IC))
N = V*1000/(%pi*De) // The spindle speed should be calculated based on the effective diameter in cut in rpm
ft = amax / sind(vm) 
fr = nt*ft*N // The feed rate of the cutter in mm/min
b = De // Radial depth of cut in mm
mrr = d*b*fr // Material removal rate in mm^3/min
printf("\nThe Material removal rate  = %.0f mm^3/min",mrr) 
// The answers vary due to round off error
// The answer provided in the textbook is wrong for the mrr
