// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 7-4
//Refer the graph in Fig.7.5
//From the Graph
t=10; //Time span in seconds
D=20; //Total Displacement, m

//Computations
V=D/t; //Speed, m/s
//As speed by Curve A is constant
V_inst=V;  //Instantaneous Speed at t=5s, m/s

printf("The speed at t=5 s is V_inst = %.0f m/s.", V_inst)
