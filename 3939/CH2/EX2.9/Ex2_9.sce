clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.9
// Given that
D = 200 // Outside diameter of the flange in mm
Di = 100 // Inside diameter of the flange in mm 
N = 400 // Maximum rotational speed in rpm
L = 500 // Length of the tube in mm
ft = 0.25 // Maximum feed rate in mm/rev
d = 8 // Depth of cut in mm
us = 0.025 // Specific Energy from Table 2.1 in W.min/cm^3
E = 50000 // Modulus of elasticity of the material in N/mm^2
mrr = (%pi*D*N*ft*d) // Material removal rate in mm^3/min
P = (mrr/1000)*us  // Maximum power require in kW (the conversion unit of 1000 to formula for mm to cm)
tm = (D-Di)/(2*ft*N)
// The perpendicularity error is equivalent to the deflection of the tube under the cutting load
F_c = (P*1000)/(%pi*(N/60)*(D/1000)) // Cutting force in N; 1000 for kW conversion, 60 for rev/s conversion and 1000 for mm to m
I = (%pi*(D^4-Di^4))/64  // Cross sectional moment of inertia
deflection = (F_c*(L^3))/(3*E*I) 
taper_error = D*(deflection/(2*L))
printf("\n The Maximum power = %.1f kW,\n Cutting time = %.1f min,\n The taper or perpendicularity error is %.3f mm",P,tm,taper_error)
