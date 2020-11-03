// OS - Windows 10 (64 bit)
// Scilab version - 6.0.2
clear; // Remove clear, clc if you want to access the stored variables 
clc
// Example 33.2 - Rent's Rule
// Given that
A = 17^2 // Processable area of the chip
n = 500
C = 0.89 // rents rule parameters
m = 0.45 
n_ic = A*n 
n_io = C*n_ic^m
C1 = 6.9 // rents rule parameters for 1
m1 = 0.12  
n_io1 = C1*n_ic^m1
printf('Number of Circuits = %.0f \n Rents Rule with C=0.89 and m = 0.45 = %.0f input/output terminals \n Rents Rule with C=6.9 and m = 0.12 = %.0f input/output terminals \n',n_ic,n_io,n_io1)
