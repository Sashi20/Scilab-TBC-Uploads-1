//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 60;    //(kg)(Mass of the mass)
h = 20;    //(m)(Height of the tower)
g = 9.8;   //(m/s^2)(Accn due to Gravity)

//Let P = Average resistance of the water.

//Potential energy of the man before jumping:
PE = m*g*h;        //(N-m)        -(1)

//Work done by the average resistance of water = Average resistance of water * Depth of water;
//W = P*2          //(N-m)        -(2)

//Since the total potential energy of the man is used in the work done by the water:

P = PE/2;          //(N)
printf("Average resistance of the water = %.2f N",P);
