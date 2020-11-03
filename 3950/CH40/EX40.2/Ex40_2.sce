// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 40.2  - Determining the Sigma level of a process
// Given that 
N_u = 9056
N_o = 23
N_d = 479
N_du = 226
DPMO = 1000000*(N_d/(N_u*N_o))
DPM = 1000000*(N_d/N_u)
DUPM = 1000000*(N_du/N_u)
sigma = 3.4 // From table 40.3 
printf('The Defects per Million Opportunities(DPMO) = %.0d \n The Defects per Million (DPM) = %d \n The Defective units per millin (DUPM) = %d \nThe corresponding sigma level is about = %.1f',DPMO,DPM,DUPM,sigma)
// Answer varies due to round off error
