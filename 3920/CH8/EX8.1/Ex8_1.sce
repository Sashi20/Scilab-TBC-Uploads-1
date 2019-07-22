// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 8-1
//Given
m=2.0; //mass, kg
v1=50; //Initial velocity in Northerly direction, m/s
v2=25; //Final velocity in Northerly direction, m/s

//Computations
p1= m*v1; //original momentum, kg-m/s
p2=m*v2; //Final Momentum, kg-m/s
P=p2-p1; //Change in Momentum, kg-m/s

printf(" The impulse is %.0f kg-m/s in Northerly direction or %.0f kg-m/s in Southerly direction.", P, -P)
