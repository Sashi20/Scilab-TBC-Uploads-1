//Example 17_10
clc;
clear;
close;

//Given data :
Rl=755.385;// Recorded length of line in m
Ts=27;// Standardised temperature in degree celcius
Tm=12;// Measured temperature in degree celcius
alpha=11.6/(10^6);// Coefficient of thermal expansion of the material ot the tape in /degree celcius
Tc=Rl*alpha*(Tm-Ts);// Temperature correction in m
s1=1+(30/60);// Slope 1 in degree
s2=2+(10/60);// Slope 2 in degree
s3=3+(30/60);// Slope 3 in degree
s4=2+(45/60);// Slope 4 in degree
s5=4+(30/60);// Slope 5 in degree
l1=120;// Length of slope for 1 degree 30 minutes in m
l2=248;// Length of slope for 2 degree 10 minutes in m
l3=136;// Length of slope for 3 degree 30 minutes in m
l4=135;// Length of slope for 4 degree 45 minutes in m
l5=Rl-(l1+l2+l3+l4);// Length of slope for 4 degree 30 minutes in m
Cs=(l1*(1-cosd(s1)))+(l2*(1-cosd(s2)))+(l3*(1-cosd(s3)))+(l4*(1-cosd(s4)))+(l5*(1-cosd(s5)));// Correction for slope in m
TC=Tc-Cs;// Total correction in m
TL=Rl+TC;// True length of the line in m
disp(TL,"True length of the line in m");
// The answers vary due to round off error
