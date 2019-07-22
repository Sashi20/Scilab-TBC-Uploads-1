// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 15-1
//Given
L1=1.50; // in mH
L2=150; // in micro H
L3=120; //in micro H

//Computations
 //for series combination of the inductors, net inductance is,
L_s=L1+L2*10^-3+L3*10^-3; // in mH

printf("The net series inductance, L_s = %.2f mH.", L_s)
