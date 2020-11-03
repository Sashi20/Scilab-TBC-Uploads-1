// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 13.1 - Extrusion flow rates
// Given that
D = 75 // Diameter of the extruder barrel in mm
d_c = 6 // channel depth in mm
N = 1 // Screw rotational speed
A = 20 // flight angle
p = 7.0*10^6 // head pressure at the end of the barrel in Pa
L = 1.9 // Length of the barrel in m
eta = 100 // Viscosity of the polymer in Pa-s
Q_d = 0.5*(%pi^2)*(((D*10^-3)^2))*(d_c*(10^-3))*sind(A)*cosd(A)
Q_b = (p*%pi*(D*10^-3)*((d_c*10^-3)^3)*(sind(A)^2))/(12*eta*L)
Q_x = (Q_d - Q_b)
a = 53525*10^-9
printf('volume flow rate of the plastic in the barrel = %.5e m^3/s',Q_x)
// Answer varies due to round off error
