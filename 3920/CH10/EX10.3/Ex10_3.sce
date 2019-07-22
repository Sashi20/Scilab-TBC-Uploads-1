// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 10-3
//Given
l=1.00; //original length of cord, m
F1=5.00; //force, N
F2=2.00; //Force, N
l1=2.00; //length of cord when 5N force is applied, m

//Computations
s1=l1-l; //lengh stretched by 5N force, m
k=s1/F1;  //spring constant, m/N
s2=k*F2; //length stretched by 2N force, m
l2=l+s2; //length of cord when 2N force is applied, m

printf("The length of cord with 2N force applied is %.2f m.",l2)
