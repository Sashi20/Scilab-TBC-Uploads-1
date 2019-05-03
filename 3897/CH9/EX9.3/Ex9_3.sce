clc; clear;
// Example 9.3
// Page 258
// Given data
AT=15; // drainage basin area, ha
A1=6.5; // flat drainage area, ha
A2=6.0; // lawn drainage area, ha
A3=2.5; //paved drainage area, ha
C1=0.01; // runnoff coefficient for flat
C2=0.2; // runnoff coefficient for lawn
C3=0.95; // runnoff coefficient for paved
//estimation
C=1/(AT)*(A1*C1+A2*C2+A3*C3); // composite runoff coefficient, from eq 9-2 and table 9.1
printf('The composite runoff coefficient = %f ',C)
clear




