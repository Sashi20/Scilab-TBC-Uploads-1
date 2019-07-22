// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 12-12
//Given
E=3.0; //supply voltage, V
R1=22; //in ohm
R2=47; //in ohm
R3=68; //in ohm

//Computations
P1=E^2/R1; //in W
P2=E^2/R2; //in W
P3=E^2/R3; //in W

printf("The power dissipated by R1, P1 = %.2f W.\n",P1)
printf("The power dissipated by R2, P2 = %.2f W.\n",P2)
printf("The power dissipated by R3, P2 = %.2f W.",P3)
