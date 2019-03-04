
// Exa 1.2

clc;
clear;

// Given

No_Div = 50; // No of divisions
V = 100; // Max voltage measured (V)

// Solution

printf(' Resolution is the smallest change in input that can be measured \n The meter can be read to 1/2 division \n');
value = No_Div/V;
printf(' So, the resolution is 1/2 divisions and its value in volts is  %.1f V \n', value);

printf(' Therefore, the resolution of instrument is 0.5 V \n');