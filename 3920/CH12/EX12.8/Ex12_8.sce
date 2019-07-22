// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-8
//Refer Fig. 12-11
//Given
R_n1=10; //value of resistance for five resistors, ohms
R_n2=20; //value of resistance for other five resistors, ohms
E=15; //in V

//Computations
R=R_n1*5+R_n2*5; //ohms
I=E/R; //in A
E_1=I*R_n1; //voltage across one 10 ohm resistors, V
E_2=I*R_n2; //voltage across one 20 ohm resistors, V

printf("The voltage across one of the 10-ohm resistors = %.1f V.\n",E_1)
printf("The voltage across one of the 20-ohm resistors = %.1f V.",E_2)
