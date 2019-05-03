clc; clear;
// Example 2.15
// Page 39
// Given data
D1=100; //mm
D2=50; //mm
P=75; //kPa
C=0.98; // discharge coefficient
//estimation
D1=D1/1000; //m
D2=D2/1000; //m
A1=%pi*(D1)^2/4; //m^2
A2=%pi*(D2)^2/4; //m^2
Q=C*A2*((2*9.8*P/9.8)/(1-(A2/A1)^2))^(1/2); // flow rate, m^3/s, equation 2-10
printf('The flow rate in pipe Q = %f m^3/s',Q)
clear



