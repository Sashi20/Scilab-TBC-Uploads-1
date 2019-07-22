clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 6.2
// Given that
alpha = -8 // Rake angle of tool -8 from the Problem 6.1
b = 2.5 // Thickness of tube in mm
a = 0.3 // feed in mm/rev
V = 200 // cutting speed in m/min
ac = 0.85 // chip thickness in mm
lf = 0.5 // tool-chip contact length in mm
Fc = 900 // tangential cutting force in N
Fz = 600 // Axial (feed) force in N
tsz = 0.02 // thickness of shear zone assumed as 0.02 mm
rc = a/ac // Cutting ratio 
phi = atand ((rc*cosd(alpha))/(1-(rc*sind(alpha))))
// The shear angle is reduced from 23.2 to 21.8 degrees as expected since the rake angle was reduced. 
tow_s = ((((Fc*cosd(phi))-(Fz*sind(phi)))*sind(phi))/(a*b)) // Mean shear stress of the workpiece
F_s = (tow_s*a*b)/sind(phi) 
beta_a = atand(Fz/Fc)+alpha // Beta angle calculated  from Eq 6.30 using Figure 6.27
R = F_s/(cosd(phi+beta_a-alpha))  // Resultant force in N
F_c = R*cosd(beta_a-alpha) // Cutting force in N
F_z = R*sind(beta_a-alpha) // Feed force in N
printf("The Tangential (cutting) force = %.0f N, \n The Feed force = %.0f N",F_c,F_z)
// The answer provided in the textbook is wrong for mrr
