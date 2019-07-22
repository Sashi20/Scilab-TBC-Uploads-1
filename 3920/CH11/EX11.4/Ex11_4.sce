// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 11-4
//Given
d=10.000; //original length of rod, m
d1=10.025; //Increased length of rod, m
t=20.00;  //Initial temperature, degree Celsius
t1=25.00;  //Increased temperature, degree Celsius

//Computations
s=d1-d; //in m
T=t1-t; 
alpha=s/(d*T);

printf("The thermal coefficient of linear expansion, alpha = %.1E /degree-Celsius",alpha)
