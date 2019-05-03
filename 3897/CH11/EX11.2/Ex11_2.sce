clc; clear;
// Example 11.2
// Page 369
// Given data
P=15000; // total population
R=5; // rate of waste generation per person per day, lb
A=25; // landfill area, ac
D=20; // depth of refuse, ft
f=25; // addtional volume of cpver material, percent
w=1000; //  unit weight of refuse, lb/yd^3
//estimation 
W=R*365*P; // total weight of refuse  generated per year, lb/year
V=W/w; // total yearly volume of refuse, yd^3/yr
delta_V=0.25*V; // additional volume for cover material, yd^3/yr
TV=V+delta_V; // total lanfill volume required, yd^3/yr
AV=A*43560*D*(1/27); // available volume for landill, yd^3
L=AV/TV; // useful life of landfill, year
printf('The useful life of landfill= %f year',L)
clear
