// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 17-6
//Given
e=1.000*10^-25; //energy, J

//data assumed
h=6.6262*10^-34 //value of Planck's constant,J-s
c=2.99792*10^8; //speed of light, m/s

//Computations
lambda=h*c/e; //wavelength, m

printf("The wavelength of the EM, lambda = %.4f m.",lambda)
