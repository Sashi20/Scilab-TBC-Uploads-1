// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 20-3
//Given
k=2.00; //time-dilation factor

//data assumed
c=2.99792*10^8; //speed of light, m/s

//Computations
u=sqrt(1-1/k^2);
speed=u*c; //speed required, m/s

printf("The necessary speed is %.1f percent of speed of light, or %.2E m/s.",u*100, speed)
