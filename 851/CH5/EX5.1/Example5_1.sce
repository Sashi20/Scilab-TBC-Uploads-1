//clear//
//Caption:Average Transmitted Power for PCM
//Example5.1:Average Transmitted Power of PCM
//Page 187
clear;
clc;
sigma_N = 10^-6;
k = 7;
M = 2;
disp('The average transmitted power is:')
P = (k^2)*(sigma_N)*((M^2)-1)/12;
disp(P)
//Result
//Enter the noise variance 10^-6
//Enter the separation constant for on-off signaling 7
//Enter the number of discrete amplitude levels for NRZ polar 2
// The average transmitted power is: 0.0000122