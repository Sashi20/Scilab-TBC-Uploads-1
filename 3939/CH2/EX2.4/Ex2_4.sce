clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.4
// Given that
V = 100 // Cutting Velocity in m/min
D = 75 // Diameter of the workpiece in mm
l = 200 // Length of the cut in mm
d = 5 // Depth of cut in mm
ad = 80 // Axial depth of cut in mm
rd = 5 // Radial depth of cut in mm
amax = 0.2 //  Maximum uncut chip thickness in mm/rev
E = 400000 // Modulus of elasticity of the material in N/mm^2
us = 0.08 // Unit specific energy for work material from Table 2.1 in kW/cm^3/min
nt = 4
N = V*1000/(%pi*D) // Spindle rotational speed in rpm so with 1000 multiplying 
vm = acosd(1-((2*d)/D))
ft  = amax / sind(vm) // Feed per tooth in mm
fr = nt*ft*N // Feed rate for the cutter in mm/min
cs = ad*rd // Cross-sectional area of uncut chip in mm^2
mrr = cs*fr  // Material removal rate in mm^3/min , in Power required convert to cm^3/min divide by 1000
P = (mrr/1000)*us // Power required for the operation 
F = (P*1000*60)/V  // Cutting force, where 1000 is for converting kW to Nm/s and 60 for s/min
Fr = 0.3*F  // Radial Force, Radial component is 30% of the cutting (tangential) force 
//delta = (Fr*)
I = (%pi*(0.8*D)^4)/64
deflection = (Fr*l^3)/(3*E*I)
taper_error = D*(deflection/(2*l))
printf("The taper on the sidewall of the workpiece = %.4f ",taper_error)
// The answer provided in the textbook is wrong 
