//Example 19_3
clc;
clear;
close;

//Given data :
g1=6.85;// Gauge reading at 10.00 am in m
g2=6.95;// Gauge reading at 10.10 am in m
dg=1;// Datum gauge reading in m
mg=(g1+g2)/2;// Mean gauge reading at 10.05 am in m
C=-(mg-dg);// Correction in m
s1=2.35;// Sounding s1 at 10.05 am in m
s2=7.65;// Sounding s2 at 10.05 am in m
Cs1=C+s1;// Corrected sounding for s1 in m
disp(Cs1,"Corrected sounding for s1 in m");
Cs2=C+s2;// Corrected sounding for s2 in m
disp(Cs2,"Corrected sounding for s2 in m");
// The answers vary due to round off error
// The answer provided in the textbook is wrong
