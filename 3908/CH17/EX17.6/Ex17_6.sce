//Example 17_6
clc;
clear;
close;

//Given data :
E1=185;// Elevation of A in m
E2=885;// Elevation of B in m
D=100;// Distance between Stations A and B in km
D1=3.8533*sqrt(E1);// Distance to visible horizon from A in km
AC=42;// Distance of C from A in km
AD=81;// Distance of D from A in km
Ae=D1;// in km
Ce=Ae-AC;// in km
De=AD-Ae;// in km
Be=D-Ae;// in km
Cc1=0.06735*(Ce^2);// in m
Dd1=0.06735*(De^2);// in m
Bb1=0.06735*(Be^2);// in m
Bb=E2-Bb1;// in m
c1c2=Bb*AC/D;// in m
d1d2=Bb*AD/D;// in m
Cc2=c1c2+Cc1;// in m
Dd2=d1d2+Dd1;// in m
Lc=Cc2-310;// Line of sight clears peak C by Lc in m
Ld=655-Dd2;// Line of sight fails to clear peak D by Ld in m
H=Ld+3;// Height of line of sight at D in m
HB=H*D/AD;// Height of signal B in m
disp(HB,"Height of signal B in m");
// The answers vary due to round off error
