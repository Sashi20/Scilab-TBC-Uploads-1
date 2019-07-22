// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 16-1
//Given
V=13.8; //Total voltage of the solar battery, V

//Data assumed
v=0.6; //Voltage produced by each silicon PV cell, V

//Computations
n=V/v;

printf("In order to get %.1f V dc from solar battery, we must connect %d of PV cells in series.",V,n)
