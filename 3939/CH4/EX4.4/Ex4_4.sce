clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 4.4
// Given that
E_steel = 206700 // Youngs modulus of steel in MPa
E_heavymetal = 330000 // Youngs modulus of heavy metal in MPa
D_i = 55 // Initial diameter of the bore in mm
D_o = 59 // Final diameter of the bore in mm
D_B = 50 // Diameter of the Bar B in mm
D_abar = 35 // Diameter of the bore in mm
L = 250 // Length of the bar in mm
V = 100 // Cutting speed of the bar in m/min
fr = 0.2 // Feed in mm/rev
us = 0.06 // Specific energy from Table 2.1
D_avg = (D_i + D_o)/2 // Diameter average in mm
N = (V*1000)/(%pi*D_avg) // 
R = (D_i + D_o)/4
mrr = ((%pi*((D_o^2) - (D_i^2)))/4)*N*fr
F_r = (mrr*us)/(4*%pi*R*N/(60*1000)) // conversion unit 60 for min to seconds and 1000 for m to mm
I_A = ((%pi*(D_abar^4))/64)  // The answer for the I_A was wrong in the textbook 
// The answers vary due to round off error
I_B = ((%pi*(D_B^4))/64)
deflection_A = (F_r*(L^3))/(3*E_steel*I_A)
// The deflection of 0.246 mm is very large and the hole diameter will be smaller by 0.492 mm and will generate the scratch marks during tool retraction. Therefore, the deflection should be reduced by reducing the radial force, which is proportional to the area of cut. Hence, the doc or feed must be changed in order to reduce the force. Since a large reduction on the deflection is required, both doc and feed will be reduced by 50%. However, the reduction of the DOC by 50% will require two passes to remove the 2 mm full depth from the bore. The reduction of the feed from 0.2 to 0.1 mm/rev is acceptable but the machining time will be doubled. The reduction of the cutting conditions results in lower productivity 
F_r2 = F_r/4
deflection_2 = deflection_A/4  
deflection_heavymetal = deflection_A *(E_steel/E_heavymetal)
deflection_heavymetal2 = deflection_heavymetal/4 // Using the 50% reduced feed and DOC, the new deflection
deflection_B = F_r*(((L^3)/(3*E_steel*I_A))+((L^3)/(3*E_steel*I_B))+(((L*L)/(E_steel*I_B))*(L+L)))
printf("The deflection at the cutting tool point for bar A = %.3f mm, \n The deflection at the cutting tool point changing the boring bar material from steel to heavy metal = %.3f mm,\n The deflection at the cutting tool point for bar B = %.3f mm",deflection_A,deflection_heavymetal2,deflection_B)
// The answers vary due to round off error
