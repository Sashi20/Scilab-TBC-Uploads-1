//Example 2_24
clc;
clear;
close;

//Given data :
AD=320;// Length of line AD in m
DC=640;// Length of line DC in m
DB=348;// Length of line DB in m
AC=430;// Length of line AC in m
// AC^2=AD^2 + DC^2 - 2AD*DC*cos(alpha)
ca=((AD^2)+(DC^2)-(AC^2))/(2*AD*DC);// Value of cos(alpha)
// AB^2=AD^2 + DB^2 - 2AD*DB*cos(alpha)
AB=sqrt((AD^2)+(DB^2)-(2*AD*DB*ca));// Length of line AB in m
disp(AB," Length of line AB in m");
// The answers vary due to round off error
