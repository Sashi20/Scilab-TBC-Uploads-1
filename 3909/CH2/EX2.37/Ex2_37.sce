clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.37
//calculation of specific rotation for quartz yellow light
//given data
theta=90; //rotation (in degrees)
l=3.5; //thickness (in mm) of the plate
//calculation
S=theta/l; //specific rotation (in degree/mm) 
printf("\nspecific rotation for quartz yellow light is %0.2f degree/mm",S)
