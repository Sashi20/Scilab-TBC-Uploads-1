clc; clear;
// Example 14.3
// Page 466
// Given data
P=200; // sound pressure, mubar
P0=0.0002; // reference pressure, mubar
//estimation
SPL=20*log10(P/P0); // sound pressure level, dB, from eq 14-2

printf('The sound pressure level = %f dB',SPL)
clear




