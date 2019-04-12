clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.22
//calculation of diameter of 20th ring and order of dark ring when thickness is equal to wavelength
//given data
n=4; //fourth ring
n1=12; //seventh ring
D_n=0.4; //diameter (in cm) of 4th ring
D_n1=0.7; //diameter (in cm) of 12th ring
t_n=1; //assuming thickness to be 1 for simplicity of calculation
lambda=1; //assuming wavelength to be 1 for simplicity of calculation
//calculation
m=n1-n; //difference between the number of rings
lambdaR=(D_n1^2-D_n^2)/(4*m); // for simplicity of calculation lamnbda*R is taken as one variable 
n2=20; //twentieth ring
D_20d=sqrt(4*n2*lambdaR); //diameter (in cm) of twentieth ring
n=(2*t_n)/lambda; //order of dark ring when thickness is equal to wavelength
printf('\ndiameter of twentieth ring is %0.2f cm',D_20d)
printf('\norder of dark ring is %d',n)
//answer provided in the textbook is wrong
