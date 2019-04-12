clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.39
//calculation of distance between successive positions of movable mirror
//given data
lambda1=5896*10^-10; //wavelength (in m) of light
lambda2=5890*10^-10; //another wavelength (in m) of light
//calculation
del_lambda=lambda1-lambda2; //difference of wavelengths (in m)
d=(lambda1*lambda2)/(2*del_lambda); //distance between successive positions of movable mirror (in m)
printf("\ndistance between successive positions of movable mirror is %0.2f Armstrong",d*10^10)
//the answer provided in the book is wrong
