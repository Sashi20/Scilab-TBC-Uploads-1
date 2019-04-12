//Example 17_9
clc;
clear;
close;

//Given data :
l=29.995;// Actual length of tape in m
L=30;// Absolute length of tape in m
Ts=38;// Standardised temperature in degree celcius
Tm=22;// Measured temperature in degree celcius
Cl=l-L;// Correction for absolute length of tape in m
alpha=11.6/(10^6);// Coefficient of thermal expansion of the material ot the tape in /degree celcius
Ct=L*alpha*(Tm-Ts);// Correction for temperature in m
TC=-(Cl+Ct);// Total correction in m
l1=8560;// Recorded length of line in m
TCl=TC*l1/L;// Total correction for the line in m
TL=l1-TCl;// True length of the line in m
disp(TL,"True length of the line in m");
// The answers vary due to round off error
