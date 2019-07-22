// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 6-5
//Given
Speed_kmph=90;  //Posted speed limit, km/h

///Computation
Speed_miph=Speed_kmph*10^3*6.214*10^-4; //in miles/h

printf("The speed limit is %.0f miles per hour(mi/h).",Speed_miph)
