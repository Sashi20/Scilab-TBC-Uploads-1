// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 13-4
//Given
omega=3.8865*10^5; //angular frequency, rad/s

//Computations
f_Hz=omega/(2*%pi);
f_kHz=f_Hz/10^3;

printf("The frequency in kilohertz, f_kHz = %.1f kHz.",f_kHz)
