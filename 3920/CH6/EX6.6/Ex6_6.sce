// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 6-6
//Refer to Problem 6-5
//Given
Speed_kmph=90;  //Posted speed limit, km/h

///Computation
Speed_ftps=Speed_kmph*10^3*3.281/3600; //in feet/sec

printf("The speed limit is %.0f ft/s.",Speed_ftps)
