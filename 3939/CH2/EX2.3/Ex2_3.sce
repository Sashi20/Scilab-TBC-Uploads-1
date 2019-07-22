clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.3
// Given that
D_one = 50 //Initial diamter in mm
f = 0.4 // Feed for the tool in mm/rev
d = 4 // Depth of cut in mm
v = 70 // Cutting speed in m/min
kappa = 20 // Lead angle of the tool in degrees
s = 0.053  // Specific cutting energy is obtained from Table 2.1 units kW/cm^3/min
a = f*cosd(kappa) // The uncut (nominal) chip thickness in mm
Lm = d*s*(kappa) 
printf("\nThe uncut (nominal) chip thickness  = %.3f mm, \n The cutting edge engagement = %.3f mm",a,Lm) 
// The answers vary due to round off error
