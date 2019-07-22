// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 6-3
//Given
I_mH=0.1;  //Inductor Value, mH

///Computation
I_muH=I_mH*10^3; //in microhenrys

printf("%.1f mH = %.0f microhenrys(muH).",I_mH, I_muH)
