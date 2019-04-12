//Example 2_14
clc;
clear;
close;

//Given data :
l=30;// Length of tape in m
wl=10;// Weight per unit length of tape in N
P=120;// Tension pull in N
CS=l*(wl^2)/(24*P^2);// Correction due to sag in m
disp(CS,"Correction due to sag in m");
hd=l-CS;// Horizontal distance between the supports in m
disp(hd,"Horizontal distance between the supports in m");
