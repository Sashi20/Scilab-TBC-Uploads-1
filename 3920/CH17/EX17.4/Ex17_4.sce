// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 17-4
//Given
f=500; // in Hz
g=2.500; // in kHz

//Computations
x=g*1000-f; //in Hz
y=g*1000+f;  //in Hz

printf("The beat frequencies are:-\n x=%d Hz = %.2f kHz.\n y=%d Hz = %.2f kHz.",x,x/1000,y,y/1000)
