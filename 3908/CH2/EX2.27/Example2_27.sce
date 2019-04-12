//Example 2_27
clc;
clear;
close;

//Given data :
AC=42;// Length of AC in m
alpha=30;// Angle in degree
CB=AC/cosd(alpha);// Length of CB in m
disp(CB,"Length of CB in m");
beta=60;// Angle in degree
CD=AC/cosd(beta);// Length of CD in m
disp(CD,"Length of CD in m");
AB=AC*tand(alpha);// Length of AB in m
disp(AB,"Length of AB in m");
