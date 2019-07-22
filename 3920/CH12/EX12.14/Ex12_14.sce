// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-14
//Refer Fig. 12-14
//Given
R1=50; //ohms
R2=60; //ohms
R3=70; //ohms
R4=80; //ohms
I=500; //mA

//Computations
E1=I*R1/1000; //V
E2=I*R2/1000; //V
E3=I*R3/1000; //V
E4=I*R4/1000; //V
E=E1+E2+E3+E4; //V

printf("The supply voltage, E = %.0f V.",E)
