clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.6
// Given that
d = 6 // Depth of cut in mm
D = 25 // Diameter of the tool in mm
a_max = 0.2 // Feed in mm/tooth
V = 150 // Cutting speed in m/min
nt = 2
b = 11 // Radial doc will be half of the effective diameter
De = 2*sqrt((d*(D-d))) // Effective tool diameter 
// Effective tool diameter is not the actual cutter diameter because the axial depth of cut is smaller than the radius of the ballnose
// Since the depth of cut is significantly smaller than the radius of the nose chip thinning occurs
vm = acosd (1-((2*d)/D))
ft = a_max/sind(vm) 
N = (V*1000)/(%pi*De) // Spindle speed in rpm and Effective tool diameter need to be considered 
// The answers vary due to round off error
fr = nt * ft * N // Feed rate of the cutter
mrr = d*b*fr // Material removal rate in mm^3/min
printf("\n The Material Removal Rate = %.0f mm^3/min",mrr)
// The answer provided in the textbook is wrong
