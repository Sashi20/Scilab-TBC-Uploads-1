//Example 17_5
clc;
clear;
close;

//Given data :
ue=328;// Uniform elevation in m
me=ue+3;// Minimum elevation of line of sight in m
E1=372;// Elevation of station A in m
E2=458;// Elevation of station B in m
h1=E1-me;// Elevation of A in m
h2=E2-me;// Elevation of B in m
D=72;// Distance between stations A and B in km
D1=sqrt(h1/0.06735);// Distance D1 from A in km
D2=D-D1;// Distance D2 from C in km
H=0.06735*D2^2;// Height of the point in the line of sight at B in m
eB=me+H;// Elevation of signal at B in m
HB=eB-E2;// Height of signal at B in m
disp(HB,"Height of signal at B in m");
// The answers vary due to round off error
