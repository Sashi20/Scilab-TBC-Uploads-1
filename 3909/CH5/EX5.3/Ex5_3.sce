clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.3 
//calculation of Planck's constant
//given data
e=1.6*10^-19; //charge of electron (in C)
//first case
V1=4.6; //stopping potential (in V)
nu1=2*10^15; //frequency (in Hz)
//second case
V2=12.9; //stopping potential (in V)
nu2=4*10^15; //frequency (in Hz)
//calculation
h=(e*(V2-V1))/(nu2-nu1); //Planck's constant (in Js)
printf("\nPlancks constant is %1.2e J.s",h)
//the answer provided in the textbook is wrong
