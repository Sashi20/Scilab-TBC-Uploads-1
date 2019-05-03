clc; clear;
// Example 7.8
// Page 201
// Given data
Q=1500; // discharge, gpm
D=10; // diameter of pipe, inch
L=3000; // length, ft
h=100; // static head, ft
e=65; // efficiency of pump, percent
//estimation 
S=0.024; // slope from nomograph for Q AND D
hL=S*L; // head loss, ft
TDH=h+hL; // total dynamic head, ft
P_out=(Q*TDH)/3960; // hp, eq 7-7
P_in=(P_out/e)*100; // required brake horsepower, hp 
printf('The required brake horsepower = %f hp',P_in)
clear




