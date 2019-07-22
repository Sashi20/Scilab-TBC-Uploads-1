clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 5.8
// Given that
k_s = 1.375e9 // Spring constant linear for CAT40 from Table 5.7 in n/m
k_h = 3e8  // Spindle stiffness in N/m (linear)
k_theta = 8.108e6 //  Spindle stiffness in N/m (rotational)
D1 = 25 // Diameter of the tool-holder spindle in mm from figure 5.106
D2 = 44 // Major Diameter of the tool-holder spindle in mm from figure 5.106
f_r = 0.15   // Feed in mm/rev
Fr = 185 // Radial cutting force in N
V = 100 // Cutting speed in m/min
L1 = 170 //Length of the tool-holder in mm from figure 5.106
L2 = 40 //Length of the tool-holder chuck in mm from figure 5.106
L = L1+L2  // Total length of the tool-holder and chuck in mm from figure 5.106
La = 20 // Distance between the spindle nose and the rotational spring in mm
E1 = 206700 // Youngs modulus of steel in MPa
E2 = 206700 // Youngs modulus of steel in MPa
I1 = (%pi*D1^4)/64 // The answers vary due to round off error
I2 = (%pi*D2^4)/64
k = 1/((1/k_s)+(1/k_h))
deflection_1 = (Fr/k)*1000  // Linear deflection in N, 1000 is the conversion unit for m to mm
deflection_2 = f_r*(((L1^3)/(2*E1*I1))+((L2^3)/(2*E2*I2))+(((L1*L2)*(L1+L2))/(E2*I2)))*1000  //The deflection of the bar structure with two cross sections in mm, 1000 is the conversion unit for m to mm
// The answers vary due to round off error
theta = (Fr*(L+La))/(k_theta*1000) // Angle in radians 
deflection_r = (L+La)*tan(theta) // Since the theta value is in radians, not inserting tand here.
deflection_total = deflection_1+deflection_2+deflection_r
// The answer provided in the textbook is wrong
printf("The total deflection = %.3f mm",deflection_total)
