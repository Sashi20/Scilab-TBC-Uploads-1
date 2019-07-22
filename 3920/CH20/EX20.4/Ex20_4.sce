// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 20-4
//Given
speed=2.40*10^8; //speed of ship, m/s
l=19.5; //at-rest length of ship, m

//data used
c=3.00*10^8; //speed of light, m/s

//Computations
u=speed/c;
L=sqrt(1-u^2); //apparent length of the ship as fraction of its length
L_app=l*L; //apparent length of moving ship, m

printf("The ship will look %.1f m long when it whizzes by at %.2E m/s.",L_app,speed)
