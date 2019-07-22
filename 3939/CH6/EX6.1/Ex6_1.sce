clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 6.1
// Given that
b = 2.5 // Thickness of tube in mm
a = 0.3 // feed in mm/rev
V = 200 // cutting speed in m/min
ac = 0.7 // chip thickness in mm
lf = 0.5 // tool-chip contact length in mm
Fc = 900 // tangential cutting force in N
Fz = 600 // Axial (feed) force in N
alpha = 0 // Rake angle of tool is Zero
tsz = 0.02 // thickness of shear zone assumed as 0.02 mm
// Sample Problem 6.1 on page no. 436
printf("\n  Problem 6.1  \n")
beta = atand(Fz/Fc)
rc = a/ac // Cutting ratio 
phi = atand((rc*cosd(alpha)/(1-(rc*sind(alpha))))) // Mean shear angle between the direction of cutting speed and the shear plane
tow_s = ((((Fc*cosd(phi))-(Fz*sind(phi)))*sind(phi))/(a*b)) // Mean shear stress of the workpiece
tow_f = ((sqrt((Fc^2)+(Fz^2))*sind(beta))/(b*lf)) // Mean frictional stress at the tool-chip interface
gamma = cotd(phi)+(tand(phi-alpha))
delta_t = (tsz*60)/(V*1000*sind(phi))
gamma_dot = gamma/delta_t // Strain rate in the chip formation if thickness of shear zone assumed as 0.02 mm
FE = (((sqrt((Fc^2)+(Fz^2))*sind(beta))*rc)/Fc)*100 // Fricition energy
printf("\n Mean angle of friction on the tool face = %.1f°,\n Mean shear stress produced in cutting the workpiece = %.0f N/mm^2,\n Mean frictional stress at the tool-chip interface = %.0f N/mm^2 \n Shear Strain = %.2f°,\n Strain rate in the chip formation = %.0f s^-1, \n Friction energy accounts for %.0f Percentage of the total energy ", beta,tow_s,tow_f,gamma,gamma_dot, FE)
// The answers vary due to round off error
