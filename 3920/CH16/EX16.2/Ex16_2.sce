// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 16-2
//Given
I_g=23.5; //current gain at ideal condition
f=1000; //operating frequency, Hz
f_alpha=900; //alpha cutoff, kHz

//Computations
I_gm=I_g*0.707; //maximum possible current gain at 900 kHz

printf("The maximum possible current gain that the transistor can produce at %d kHz is %.1f.",f_alpha,I_gm)
