//Example 10_21
clc;
clear;
close;

//Given data :

// PQRS
l1=52;// Length in m
b1=24;// Width in m
A1=l1*b1;// Base area in sq. m
h1=2.5;// Height in m
h2=2.5;// Height in m
h3=5.8;// Height in m
h4=5.8;// Height in m
H1=(h1+h2+h3+h4)/4;// Average height in m
V1=H1*A1;// Volume in cubic m

// QUVR
l2=b1;// Length in m
b2=l2+(2*11.6);// Width in m
A2=(l2+b2)*11.6/2;// Base area in sq. m
h1=5.8;// Height in m
h2=5.8;// Height in m
h3=0;// Height in m
h4=0;// Height in m
H2=(h1+h2+h3+h4)/4;// Average height in m
V2=H2*A2;// Volume in cubic m

// TPSW
l3=b1;// Length in m
b3=l3+5+5;// Width in m
A3=(l3+b3)*5/2;// Base area in sq. m
h1=2.5;// Height in m
h2=2.5;// Height in m
h3=0;// Height in m
h4=0;// Height in m
H3=(h1+h2+h3+h4)/4;// Average height in m
V3=H3*A3;// Volume in cubic m

// TUQP
l4=l1+5+11.6;// Length in m
A4=(l4*(11.6+5)/2)-(((5^2)+(11.6^2))/2);// Base area in sq. m
h1=5.8;// Height in m
h2=11.6;// Height in m
h3=0;// Height in m
h4=0;// Height in m
H4=(h1+h2+h3+h4)/4;// Average height in m
V4=H4*A4;// Volume in cubic m

// WSRV
V5=V4;// Volume in cubic m
V=V1+V2+V3+V4+V5;// Total volume in cubic m
disp(V,"Total volume in cubic m");
// The answer provided in the textbook is wrong
