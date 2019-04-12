//Example 1_8
clc;
clear;
close;

//Given data :
D=50;// distance in m
//Case 1
r1=20;// bubble reading at left end in divisions
r2=10;// bubble reading at right end in divisions
s1=1.865;// staff reding in m
//Case 2
r3=10;// bubble reading at left end in divisions
r4=20;// bubble reading at right end in divisions
s2=1.785;// staff reding in m
sh1=(r1-r2)/2;// shift in divisions(Case 1)
sh2=(r4-r3)/2;// shift in divisions(Case 2)
sh=sh1+sh2;// total shift in divisions
s=s1-s2;// change in staff reading in m
n=sh;// number of divisions
l=0.002;// length in m
R=n*l*D/s;// radius of curvature of bubble in m
disp(R,"radius of curvature of bubble in m");
S=l*206265/R;// sensitivity of bubble in s
disp(S,"sensitivity of bubble in s");
// The answers vary due to round off error
