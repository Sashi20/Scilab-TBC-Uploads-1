clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.34
//calculation of diffraction angle
//given data
lambda1=6000*10^-10; //wavelenght (in m) of one line of light
lambda2=6000.5*10^-10; //wavelength (in m) of another line of light
W=10*10^-3; //width of grating (in m)
//calculation
dlambda=lambda2-lambda1; //difference between the two wavelengths (in m)
theta=asind((lambda1^2)/(W*dlambda)); //diffraction angle (in degrees)
printf('diffraction angle is %d degrees',theta)
