// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 18-1
//Given
lambda=7400; //wavelength, angstron

//Computations
  //As f=c/lambda, c being speed of light = 2.99792*10^8 m/s
f=2.99792*10^8/(7400*10^-10); // frequency, Hz

printf("The frequency of the red laser beam, f = %.3E Hz = %.1f THz.", f,f/10^12)
