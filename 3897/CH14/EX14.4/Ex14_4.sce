clc; clear;
// Example 14.4
// Page 467
// Given data
SPL=90; // sound pressure level for each dozers, in dB
//estimation
d=SPL-SPL; // numerical difference between two SPL values
SPL1=SPL+3; // for d=0, from Figure 14.4
d1=SPL1-SPL; // numerical difference between two SPL values
SPL2=SPL1+1.7; // for d1=3, from figure 14.4
d2=SPL2-SPL; // numerical difference between two SPL values
SPL3=SPL2+1.3; // final sound pressure level, for d2=4.7, from figure 14.4
printf('The sound pressulre level = %f dB',SPL3)
clear




