// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-7
//Refer Fig.12-10
///Given
R1=100; //in ohm
R2=200; //in ohm
R3=300; //in ohm
R4=400; //in ohm
R5=500; //in ohm

//Computations
R=1/((1/R1)+(1/R2)+(1/R3)+(1/R4)+(1/R5)); //in ohm

printf("The total resistance of the parallel combination, R = %.1f ohms.",R)
