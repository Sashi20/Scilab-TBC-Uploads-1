// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 17-5
//Given
lambda=550; //wavelength, nm

//data assumed
h=6.6262*10^-34 //value of Planck's constant,J-s
c=2.99792*10^8; //speed of light, m/s

//Computations
e=h*c/(lambda*10^-9); //energy, J

printf("The energy contained in the photon, e = %.2E J.",e)
