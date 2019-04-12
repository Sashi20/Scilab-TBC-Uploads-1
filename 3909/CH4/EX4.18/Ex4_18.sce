clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.18
//calculation of number of passes radiation has to make before the threshold
//given data
E=0.1; //energy (in Joule)
beta_th=0.15; //threshold gain (per m)
l=0.2; //length (in m)
//calculation
m=12/(beta_th*l); //number of passes radiation has to make before the threshold
printf("\nnumber of passes radiation has to make before the threshold is %d",m)
