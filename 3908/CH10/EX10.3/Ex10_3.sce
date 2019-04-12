//Example 10_3
clc;
clear;
close;

//Given data :
b=16;// Width in m
s=1;// Side slope
r=4;// Transverse slope
h=1;// Height at mid-section in m
h1=((b/2)-(h*r))/(r-s);// Height 1 in m
h2=((b/2)+(h*r))/(r-s);// Height 2 in m
w1=(b/2)+(h1*s);// Width 1 in m
w2=(b/2)+(h2*s);// Width 2 in m
// Area of the section = area of  triangle OAC + area of triangle OBD
// The bases of triangles OAC and OBC are AO and OB, the lengths of which can be determined from the principle of similarity of triangles
// 4/(4/3)=(8+x)/(8-x)
// On simplifying we get 16x = 64
x=64/16;// Distance by which O is shifted from centre in m
AO=8-x;// Length of AO in m
OB=8+x;// Length of OB in m
A=(1/2)*AO*h1*s;// Area in filling in sq. m
disp(A,"Area in filling in sq. m");
A=(1/2)*OB*h2*s;// Area in cutting in sq. m
disp(A,"Area in cutting in sq. m");
