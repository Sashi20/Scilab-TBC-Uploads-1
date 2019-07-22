// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 7-14
//Given
m=10500; //mass of spacecraft, kg
F=100000; //Force in direction of North star, N

//Computations
a=F/m; //acceleration, m/s^2

printf("The acceleration is %.4f m/s^2 towards North Star.", a)
