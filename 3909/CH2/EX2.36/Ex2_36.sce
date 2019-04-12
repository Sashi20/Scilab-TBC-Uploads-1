clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.36
//calculation of thickness of plate
//given data
theta=90; //rotation (in degrees) of plane of vibration of plane polarized light
S=21.72; //specific rotation (in degree/mm) 
//calculation
l=theta/S; //thickness (in mm) of plate
printf("\nthickness of plate is %0.2f mm",l)
