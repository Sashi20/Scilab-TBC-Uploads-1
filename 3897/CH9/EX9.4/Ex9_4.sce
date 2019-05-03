clc; clear;
// Example 9.2
// Page 257
// Given data
A=0.25; // drainage basin area, km^2
C=0.25; // runoff coefficient
d=150; // overland flow distance, in m
s=7; // slope in percent
//estimation
A=250000; // drainage basin area, m^2
i_5=0.070; // 5-year storm intensity for 30 min duration, m/h
i_100=0.15; // 100-year storm intensity for 30 min duration, m/h
Q_5=C*i_5*A; // peak rate for 5-year strom, m^3/h
Q_100=C*i_100*A; // peak rate for 5-year strom, m^3/h
printf('The peak rate of for 5-year storm = %f m^3/h\n',Q_5)
printf('The peak rate of for 100-year storm = %f m^3/h',Q_100)
clear




