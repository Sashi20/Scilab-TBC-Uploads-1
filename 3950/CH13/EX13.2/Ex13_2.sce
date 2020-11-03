clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 13.2 - Extruder and Die Characteristics
// Given that
D = 75 // Diameter of the extruder barrel in mm
L = 1.9 // Length of the barrel in m
N = 1 // Screw rotational speed
d_c = 6 // channel depth in mm
A = 20 // flight angle
eta = 100 // Viscosity of the polymer in Pa-s
D_d = 6.5  // Die opening diameter in mm
L_d = 20   // die opening length in mm
Q_max = 0.5*(%pi^2)*((D*10^-3)^2)*N*(d_c*10^-3)*sind(A)*cosd(A)
P_max = (6*%pi*D*10^-3*N*L*eta*cotd(A))/((d_c*10^-3)^2) // Answers may vary due to round off error
K_s = (%pi*(D_d*(10^-3))^4)/(128*eta*(L_d*(10^-3)))
p = (Q_max - K_s)/(Q_max/P_max) - K_s
//Q_x_p = Q_max - (Q_max/P_max)*p
Q_x = Q_max - ((Q_max/P_max)*p) 
printf('Q_max = %f m^3/s \n P_max = %.0f Pa\nShape Factor = %2.2e m^5/Ns \n Q_x = %.3e\n p = %e Pa\n',Q_max,P_max,K_s,Q_x,p)
// the answers may vary due to round off error
// Answer in the textbook is wrong 
