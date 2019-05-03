clc; clear;
// Example 8.4
// Page 232
// Given data
E1=1100; // elevation at manhole 1, ft
E2=1093; // elevation at manhole 2, ft
E3=1090; // elevation at manhole 3, ft
Q1=1; // design flow at reach 1, mgd
Q2=2; // design flow at reach 2, mgd
C=8; // minimum cover, ft
L1=300; // length of reach 1, ft
L2=440; // length of reach 2, ft
D1=8; // diameter of reach 1, inch, for Q1 and S1
D2=12; // diameter of reach 2, inch for S2 and Q2
//estimation
S1=(E1-E2)/L1; // ground slope in reach 1
Q1=(Q1*10^6)/(24*60); // desing flow ar reach 1, gal/min
UIE1=E1-D1-(D1/D2); // upper invert elevation in reach 1, ft
FS1=S1*L1; // fall of sever at reach 1, ft
LIE1=UIE1-FS1; // lower invert elevation at reach 1, ft

S2=(E2-E3)/L2; // ground slope in reach 2
SIE=LIE1+(D1/D2); // sum of invert elevation, ft
UIE2=SIE-1; // upper invert elevation in reach 2, ft
FS2=S2*L2; // fall of sever at reach 2, ft
LIE2=UIE2-FS2; // lower invert elevation at reach 2, ft
printf(' The upper invert elevation at reach 1 = %f ft\n',UIE1)
printf(' The lower invert elevation at reach 1 = %f ft\n',LIE1)
printf(' The upper invert elevation at reach 2 = %f ft\n',UIE2)
printf(' The lower invert elevation at reach 2 = %f ft',LIE2)
clear




