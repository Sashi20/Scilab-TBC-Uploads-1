clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 5.6
// Given that
F_1 = 80 // Cutting force on the boring bar in N
L_1 = 7 // Extended length of the boring bar 7XD
L_3 = 2 // Tool shank length A bar
L_3B = 4 // Tool shank length B bar
F_3 = (F_1*L_1)/L_3  // Force acting on the back end of the boring bar A in N
F_2 = F_1+F_3  // Force acting at the front of the chuck in bar A in N
F_3B = (F_1*L_1)/L_3B  // Force acting on the back end of the boring bar B in N
F_2B = F_1+F_3B  // Force acting at the front of the chuck in bar B in N
printf("The Force at the bar A = %.0f N, \n The Force at the bar B = %0.f N",F_2,F_2B)
printf("\n The reaction force acting at the free end of the chuck is %.0f N \n is smaller than %.0f N at bar A, \n This will reduce the deformation of the chuck at the free end",F_2B,F_2 )
