clc; clear;
// Example 11.3
// Page 369
// Given data
L=30; // design life of landfill, in year
R=25; // waste generation rate, N/person/d
w=5; // waste compact unit weight, kN/m^3
D=10; // average depth, m
P=50000; // community population
C=25; // cover ratio, percent of volume for cover
//estimation 
W=R*365*P; // total weight of refuse  generated per year, N/year
W=W/1000; // total weight of refuse  generated per year, kN/year
V=W/w; // total yearly volume of compacted refuse, m^3/yr
delta_V=(C/100)*V; // additional volume for cover material, yd^3/yr
TV=V+delta_V; // total required volume required, m^3/yr
A=TV/D; // required area, m^2/yr
A=A*(1/10000)*30; // required area for landill, m^2
printf('The required area for landfill = %f year',A)
clear
