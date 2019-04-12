clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.7
//calculation of units of light received by minima
//given data
visibility=0.29
I_max=20; //maximum intensity of resulting interference pattern (in units)
//calculation
I_min=(I_max-0.29*I_max)/1.29; //units of light received  by minima obtained from the formula, visibility=(I_max-I_min)/(I_max+I_min)
printf("\nlight received by minima is %d units",I_min)
