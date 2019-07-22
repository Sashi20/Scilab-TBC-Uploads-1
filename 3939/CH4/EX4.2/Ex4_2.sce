clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 4.2
// Given that
Vd = 30 // Cutting speed for uncoated HSS drill in m/min
D = 9 // Diameter of drill for a 10mm is about 9mm
n_t = 2 
L = 27 // The bottom depth of the blind hole assumed in mm
f = 0.15 // Feed for drilling cast iron assumed in mm/flute 
row = 120 // Drill point angle in degrees
N_d = Vd*1000/(%pi*D) // Spindle speed for drilling in rpm ; 1000 is for the conversion unit
// The answer provided in the textbook is wrong for N_d
f_r = n_t*f*N_d // Feedrate for drilling in mm/min
// The answer provided in the textbook is wrong for f_r
t_md = (L+(D/tand(row/2))+2)/f_r  // Cutting time for drilling with 120degrees point drill in min
// t_T = 1.78 + 1.57 + delta_t  // The total machining time to drill and tap the hole is the sum of the drilling and tapping times plus several other tool travel times i.e., retract the tool from the bottom of hole, approach time.
// t_T2 = 6 + 1.57 + delta_t
// t_Tx = t_T2 - t_T = 7.57 + delta_t - 3.35 - delta_t 
t_Tx = 7.57 - 3.35
printf("\n The change in machining time for drilling and tapping = %.2f s",t_Tx)
