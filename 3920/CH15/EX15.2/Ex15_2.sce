// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 15-2
//Refer Problem 15-1
//Given
L1=1.50; // in mH
L2=150; // in micro H
L3=120; //in micro H

//Computations
L_p=1/((1/(L1*1000))+(1/L2)+(1/L3)); // net parallel inductance in microhenry

printf("The net parallel inductance, L_p = %.1f muH(microhenrys).", L_p)
