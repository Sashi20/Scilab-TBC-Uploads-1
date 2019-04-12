//Example 17_12
clc;
clear;
close;

//Given data :
L=50;// Length of tape in m
h1=110.385;// Elevation of A in m
h2=110.12;// Elevation of B in m
h=h1-h2;// Difference in elevation of A and B in m
Cs=h^2/(2*L);// Correction for slope in m
Ts=25;// Standardised temperature in degree celcius
Tm=42;// Measured temperature in degree celcius
alpha=11.6/(10^6);// Coefficient of thermal expansion of the material ot the tape in /degree celcius
Ct=L*alpha*(Tm-Ts);// Temperature correction in m
P=150;// Measured pull in  N
P0=100;// Standard pull in N
A=8/(10^6);// Area of cross section of tape in sq. m
E=2*10^11;// Youngs modulus in GN/sq. m
Cp=(P-P0)^2/(A*E);// Correction for pull in m
d=78500;// Density of the tape material in N/cubic m
w=A*1*d;// Weight of the tape per meter length in N/m
l=100;// Length of tape in m
n=1;// Number of spans
W=w*L/n;// Weight of tape between supports in N
CS=L*W^2/(24*P^2);
TC=Ct-Cs-Cp-CS;//
Cl=L+TC;// Corrected length in m
hm=1163.853;// Height of A above mean sea level in m
R=6370*1000;
Rm=L*hm/R;// Reduction at mean sea level in m
GL=Cl-Rm;// Geodetic length in m
disp(GL,"Geodetic length in m");
// The answers vary due to round off error
