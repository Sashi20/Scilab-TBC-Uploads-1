// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 13-1
//Given
T=5.000*10^-6; //period of the wave, s

//Computations
f_Hz=1/T; //frequency in Hz
f_kHz=f_Hz/10^3; //frequency, kHz
f_MHz=f_kHz/10^3; //frequency, MHz

printf("The frequency in hertz, f_Hz = %.3E Hz.\n",f_Hz)
printf("The frequency in kilohertz, f_kHz = %.1f kHz.\n",f_kHz)
printf("The frequency in megahertz, f_MHz = %.4f MHz.\n",f_MHz)
