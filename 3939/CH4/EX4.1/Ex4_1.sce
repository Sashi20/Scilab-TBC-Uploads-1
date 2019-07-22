clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 4.1
// Given that
Vd = 100 // Cutting speed for uncoated carbide drill in m/min
Dm = 10 // Diameter of drill from figure 4.4
D = 9 // Diameter of drill for a 10mm is about 9mm
Vt = 30 // Cutting speed of HSS tap, Assumption
f = 0.15 // Feed for drilling cast iron assumed in mm/flute 
L = 27 // The bottom depth of the blind hole assumed in mm
row = 120 // Drill point angle in degrees
p = 1 // Pitch for the M10 x 1mm tap is 1 mm
n_t = 2 // Number of Inserts
Lt = 23
Le = 2  // Assumed since a hole is made in mm
N_d = Vd*1000/(%pi*D) // Spindle speed for drilling in rpm ; 1000 is for the conversion unit
// The answer provided in the textbook is wrong for N_d
N_t = Vt*1000 / (%pi*Dm) // Spindle speed for tapping in rpm ;  1000 is for the conversion unit
f_r = n_t*f*N_d // Feedrate for drilling in mm/min
f_rt = p*N_t // Feedrate for tapping in mm/min
t_md = (L+(D/tand(row/2))+2)/f_r  // Cutting time for drilling with 120degrees point drill in min
t_mt = (Lt+Le)/f_rt  // Cutting time for tapping in min
mrr_d = ((%pi*(D^2))/4)*f_r // Material removal rate for the drill in mm^3/min
// The answer provided in the textbook is wrong for mrr
lambda = atand(p/(%pi*Dm))
mrr_t = ((p/4)+((Dm-D)/tand(row/2)))*((Dm-D)/4)*((p*N_t)/sind(lambda)) // Material removal rate for the tapping in mm^3/min
// The answer provided in the textbook is wrong for mrr
printf("\n The Material removal rate for drilling = %.0f mm^3/min, \n The Material removal rate for tapping = %.0f mm^3/min", mrr_d,mrr_t)
