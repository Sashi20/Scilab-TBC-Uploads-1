// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 18.1 - Flat Rolling
// Given that
w = 300 //width of strip
t = 25 // Thickness in mm
t_r = 22 // reduced thickness in mm
K = 275 // flow curve
n = 0.15
N = 50 // Roll speed in rev/min
d = t - t_r // Draft attempted in the rolling operation in mm
mew = 0.12 // coefficient of friction between the rolls and the work
r = 250 // radius of the roller
d_max = (mew^2)*r  // Maximum possible draft for the given coefficient of friction in mm
L = sqrt(r*(t-t_r)) // Contact length in mm
epsilon = log(t/t_r) //
Y_f = (K*(epsilon^n))/1.15  // Average flow stress in MPa
F = Y_f*w*L // Rolling force in N
T = 0.5*F*L*(10^-3) // Torque required to drive each roll in N-m(10^-3)
P = 2*%pi*N*F*L*(10^-3) // Power obtained in N-m/min
P_watts = P* 0.01667 
HP = P_watts/745.7 // One horsepower = 745.7 W
printf('Roll Force = %.0f N \nTorque = %.0f N-m \nHorse Power = %.0f hp',F,T,HP)
// Answer in textbook is wrong
