clc; clear;
// Example 14.5
// Page 465
// Given data
dBA=[72 76 79 81 84 76 75 75 74]; // sound readings, dBA
T=10:10:90; // time interval, in min
//estimation
[dBA1 idx]=gsort(dBA); 
idx_T=find(T==50);
idx1=find(dBA1>dBA1(idx_T)); 
SPL=dBA1(length(idx1)); // sound pressure level exceed 50% of time
L10=dBA1(find(T==10)); // L10 value in dB
L90=dBA1(find(T==90)); // L90 value in dB
printf('sound pressure level exceed 50 percent of time = %f dB \n',SPL)
printf('L10 = %f dB\n',L10)
printf('L90 = %f dB',L90)
clear

