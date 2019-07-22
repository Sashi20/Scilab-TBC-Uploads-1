// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 7-5
//Refer the graph in Fig.7.5
//From the Graph
t=10; //Time span in seconds
D=20; //Total Displacement, m

//Computations
V=D/t; //Speed, m/s
//As speed by Curve A is constant
V_avg=V;  //Average Speed betweent=3s to t=5s, m/s

printf("The average speed is V_avg = %.0f m/s.", V_avg)
