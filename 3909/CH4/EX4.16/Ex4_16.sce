clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.16
//to show if diffraction contribute seriously to energy loss at lassing wavelength 694.3 nm
//given data
lambda=694.3*10^-9; //wavelength (in m)
a=0.1; //in m
L=0.1; //length (in m)
//calculation
theta=a^2/lambda; //diffraction angle 
if theta>L then
    disp("diffraction is not an important energy loss mechanism")
else
    disp("diffraction is an important energy loss mechanism")
end
