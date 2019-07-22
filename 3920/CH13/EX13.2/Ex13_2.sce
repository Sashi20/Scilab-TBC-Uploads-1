// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
///Problem 13-2
//Refer Fig. 13-5
//Given
T_axis=1.0; //measure of each division on Time(horizontal) axis, microseconds

//Computations
//From the graph
T_div=4; //Number of horizontal(Time-axis) divisions for time period of the wave
T=T_axis*T_div*10^-6;  //Time peroid, s
f=1/T; //frequency, Hz

printf("The period of the triangular wave, T = %.1f microseconds or %.1E s.\n",T*10^6,T)
printf("The frequency, f = %.1E Hz.",f)
