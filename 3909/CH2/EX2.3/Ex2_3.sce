clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.3
//calculation of angle either sheet must be turned
//given data 
I0=1; //assuming I0 to be 1 for simplicity of calculation
I=I0/2; //intensity is half the initial intensity
//calculation
theta=acosd(sqrt(I/I0)); //from Malus law, I=I0cos^2(theta)
theta1=acosd(-sqrt(I/I0)); //from Malus law, I=I0cos^2(theta)
printf("\nangle either sheet must be turned is %d degree",theta)
printf("\nor")
printf("\nangle either sheet must be turned is %d degree",theta1)
