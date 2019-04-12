//Example 21_4
clc;
clear;
close;

//Given data :
teta=30;// Slope in degree
c=0;// Cohesion intercept in kN/m^2
T1=-2;// Wsin(alpha) of slice no. 1
T2=-1;// Wsin(alpha) of slice no. 1
T3=0;// Wsin(alpha) of slice no. 1
T4=2;// Wsin(alpha) of slice no. 1
T5=3;// Wsin(alpha) of slice no. 1
T6=4;// Wsin(alpha) of slice no. 1
T7=3;// Wsin(alpha) of slice no. 1
T=T1+T2+T3+T4+T5+T6+T7;// Total Wsin(alpha) of slice no. 1 to 7
P1=2;// Wsin(alpha) of slice no. 1
P2=3;// Wsin(alpha) of slice no. 1
P3=5;// Wsin(alpha) of slice no. 1
P4=4;// Wsin(alpha) of slice no. 1
P5=5;// Wsin(alpha) of slice no. 1
P6=2;// Wsin(alpha) of slice no. 1
P7=1;// Wsin(alpha) of slice no. 1
P=P1+P2+P3+P4+P5+P6+P7;// Total Wsin(alpha) of slice no. 1 to 7
SF=(P*tand(teta))/T;// Safety Factor of the slope
disp(SF,"Safety Factor of the slope");
// The answers vary due to round off error
