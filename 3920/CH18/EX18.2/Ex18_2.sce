// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 18-2
//Given
f=60.0000; //frequency, Hz

//Computations
 //using lambda- = c/f
lambda=2.99792*10^8/f; // wavelength, m

printf("The wavelength of the EM field produced in free space by ac in a common utility line is %.5E m.",lambda)
