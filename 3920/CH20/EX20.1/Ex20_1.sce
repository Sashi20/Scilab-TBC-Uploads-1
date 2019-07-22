// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 20-1

//Data assumed
c=3.00*10^5; //speed of radio signals, km/s
d=4.0*10^5; //the distance between earth and moon, km

//Computations
t=d/c; //time taken by radio signal to travel from earth to moon, light-seconds

printf("The clock M will be shifted approx. %.1f s ahead in time. \nThe clock E will be shifted %.1f s behind in time. \nWhen you get to the Moon, clock M will be approx. %.1f s ahead of clock E.", t,t,2*t)   //The answer may vary due to round-off errors.
