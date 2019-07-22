// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 11-5
//Given
alpha=2.50*10^-4; // in /degree-C
V1=8.000; // in m^3
t1=30.0; //in degree-C
t2=20.0; // in degree-C

//Computations
d1=V1^(1/3); //Initial edge length, m
T=t2-t1;
s=alpha*d1*T;
d2=s+d1; //Final edge length, m
V2=d2^3; //in m^3

printf("The volume of the cube at %.1f degree-Celsius is %.2f m^3.",t2,V2)
