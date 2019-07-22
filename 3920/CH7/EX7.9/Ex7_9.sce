// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 7-9
//Refer the graph in Fig.7.9
//From the Graph
t=10; //Time span in seconds
v=abs(0-10); //change in speed, m/s

//Computations
a=v/t; //acceleration, m/s^2
//As acceleration depicted by Curve A is constant
a_inst=a;  //Instantaneous acceleration at t=4s, m/s^2

printf("The acceleration at t=4 s is a_inst = %.0f m/s^2.", a_inst)
