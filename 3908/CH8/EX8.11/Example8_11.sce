//Example 8_11
clc;
clear;
close;

//Given data :
l=15.76;// Length of the tracer in cm
pi=22/7;
d=2.02;// Diameter in cm
M=l*pi*d;// in sq. cm
disp(M,"Value of M in cm");

// Anchor point outside
IRo=2.192;// Initial Reading in cm
FRo=4.352;// Final Reading in cm
No=1;// N for outside point
Co=0;// C for outside point
Ao=M*(FRo-IRo+(10*No)+Co);// Area calculated for anchor point outside in sq. cm

// Anchor point inside
IRi=0.012;// Initial Reading in cm
FRi=9.884;// Final Reading in cm
//Area calculated for anchor point outside = Area calculated for anchor point inside
Ai=Ao;// Area for anchor point inside in sq. cm
Ni=-2;// N for inside point
Ci=(Ai/M)-FRi+IRi-(10*Ni);// C for inside point
disp(Ci,"Value of C");
A0=M*Ci;// Area of zero circle in sq. cm
disp(A0,"Area of zero circle in sq. cm");
//"The answers vary due to round off error" 
