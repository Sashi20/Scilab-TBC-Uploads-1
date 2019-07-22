// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 14-5
//Given
s=20; //length of wire, cm
n=100; //number of turns
B=20; //flux density, G
mu=100; //permeability of core material

//Computations
I=(1/(4*%pi*10^-7)) * (s/100)*(B/10^4)/(mu*n) *1000; //in mA

printf("The current in wire, I = %.0f mA.",I)
