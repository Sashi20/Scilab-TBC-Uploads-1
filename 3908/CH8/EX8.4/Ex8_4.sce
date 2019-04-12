//Example 8_4
clc;
clear;
close;

//Given data :
n=10;// Number of sections
l1=5.4;// Length of offset measures at 5 m in m
l2=6.8;// Length of offset measures at 15 m in m
l3=8.4;// Length of offset measures at 25 m in m
l4=7.5;// Length of offset measures at 35 m in m
l5=7.2;// Length of offset measures at 45 m in m
// According to mid-ordinate rule
A=(l1+l2+l3+l4+l5)*n;// Area in sq m
disp(A,"Area in sq. m");
