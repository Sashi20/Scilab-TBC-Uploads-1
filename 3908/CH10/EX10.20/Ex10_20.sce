//Example 10_20
clc;
clear;
close;

//Given data :
a=30;// side of square in m
A=a*15/2;// Base area in sq. m
// Base area for each triangular prism is the same
h1=2.85;// Height at P in m
h2=2.45;// Height at Q in m
h3=3.15;// Height at R in m
h4=3.55;// Height at S in m
h5=2.95;// Height at T in m

// Prism PQT
H1=(h1+h2+h5)/3;// Average height in m
V1=H1*A;// Volume in cubic m

// Prism QTR
H2=(h2+h5+h3)/3;// Average height in m
V2=H2*A;// Volume in cubic m

// Prism STR
H3=(h4+h5+h3)/3;// Average height in m
V3=H3*A;// Volume in cubic m

// Prism PTS
H4=(h1+h5+h4)/3;// Average height in m
V4=H4*A;// Volume in cubic m

V=V1+V2+V3+V4;// Total volume of excavation in cubic m
disp(V,"Total volume of excavation in cubic m");
