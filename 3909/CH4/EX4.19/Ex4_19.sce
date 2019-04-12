clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.19
//calculation of number of longitudinal modes for gas lasers A and B
//given data
lambda_A=700*10^-9; //wavelength (in m) of red region
lambda_B=400*10^-9; //wavelength (in m) of blue region
L_A=0.35; //minor separation (in m) of red region
L_B=0.40; //minor separation (in m) of blue region
n0=1; //refractive index of laser medium
//calculation
qA=round(2*n0*L_A/lambda_A); //number of longitudinal models for gas laser A
qB=round(2*n0*L_B/lambda_B); //number of longitudinal models for gas laser B
printf("\nnumber of longitudinal models for gas laser A is %1.0e",qA)
printf("\nnumber of longitudinal models for gas laser B is %1.0e",qB)
//answer for qB provided in the textbook is wrong
