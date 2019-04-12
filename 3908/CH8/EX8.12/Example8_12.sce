//Example 8_12
clc;
clear;
close;

//Given data :
M=100;
C=30;
d=2;// diameter in cm
// M = l*pi*d
pi=22/7;
l=M/(pi*d);// Length in cm
A0=M*C;// Area of zero circle in sq. cm
disp(A0,"Area of zero circle in sq. cm");

a=2.93;// in cm
// (a) when wheel is beyond pivot
// pi*(l^2 + 2*a*l + r^2)=3000
r=sqrt((3000/pi)-(l^2)-(2*a*l))
disp(r,"(a) Length  in cm");

// (b) when wheel is between pivot and tracing point
// pi*(l^2 - 2*a*l + r^2)=3000
r=sqrt((3000/pi)-(l^2)+(2*a*l))
disp(r,"(b) Length in cm");
//"The answers vary due to round off error"
