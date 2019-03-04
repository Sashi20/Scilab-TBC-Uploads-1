clc;
clear;
W=2.3*1.6*10^-19 //Energy required to remove electron in eV
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s

//calculation
lambda_0=(h*c)/W
printf("\n The threshold wavelength is %1.3e.",lambda_0)
//The answer provided in the textbook is wrong.
