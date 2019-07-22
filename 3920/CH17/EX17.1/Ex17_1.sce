// Coded with Scilab 6.0.1 on Linux Mint 19
clc;
clear;
//Problem 17-1
//Refer Fig.17-1
//Given
  //For One revolution per second
  T1=1; //time period, s

  //For one revolutions per 2 second
  T2=2; //time period, s
  
//Computations
f1=1/T1; //frequency, Hz
f2=1/T2; //frequency, Hz
f2_by_f1=f2/f1; //frequency ratio
lambda2_by_lambda1=1/f2_by_f1; //wavelength ratio

printf("The wavelength becomes %d times as long.",lambda2_by_lambda1)
