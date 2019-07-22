// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 18-4
//Given
lambda=0.00100; //wavelength, nm

//Data assumed
h=6.62607*10^-34; //Planck's constant, J-s
c=2.99792*10^8; //speed of light, m/s

//Computations
e=h*c/(lambda*10^-9); //energy, J

printf("The energy contained in each photon of the gamma rays, e=%.2E J.",e)
