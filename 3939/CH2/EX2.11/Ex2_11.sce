clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 2.11
// Given that
f_t = 0.1 // Feed per tooth in mm/rev
n_t = 4 // Number of teeth
V  = 100 // Cutting speed in m/min
D = 25 // Diameter of the tool in mm
p = 3 // Thread pitch in mm
eta = 0.7 // Percentage of thread
D_u = 100 // Minor diameter in mm
L = 30 // Depth in mm
N = (V*1000)/(%pi*D) // Speed of the drill in rev/min so conversion unit 1000 multiplied
f_rt = n_t*f_t*N // The Feed rate at the cutting edge
D_m =  eta*(1.299*p) + D_u // Major diameter in mm
f_r = f_rt*(D_m - D)/D_m // Centerline Feed rate in mm/min
D_x = D_m - D // Travel distance for single orbit
L_x = sqrt((p^2)+((%pi)^2)*((D_x)^2)) // Total length of travel of the tool in mm
n_orbit = L /(3*p)
tm = n_orbit*(L_x/f_r) // Time for machining in min
// This computed time is for cutting and does not including the approach and exit distances for each orbit
printf("\n The Feed rate at the cutting edge = %.0f mm/min \n The total travel length = %.0f mm \n The Machining time = %.1f min",f_rt,L_x, tm)
// The answers vary due to round off error
