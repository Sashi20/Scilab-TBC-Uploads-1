// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 7-10
//Refer the graph in Fig.7.9
//From the Graph
t=10; //Time span in seconds
v=abs(0-10); //change in speed, m/s

//Computations
a=v/t; //acceleration, m/s^2
//As acceleration depicted by Curve A is constant
a_avg=a;  //Average acceleration betweent=2s to t=8s, m/s^2

printf("The average acceleration is a_avg = %.0f m/s^2.", a_avg)
