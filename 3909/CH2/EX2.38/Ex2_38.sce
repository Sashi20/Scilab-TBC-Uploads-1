clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.38
//calculation of thickness of quartz
//given data
theta=90; //angle of rotation (in degrees)
S=18; //specific rotation (degree/mm)
//calculation
l=theta/S; //thickness (in mm) of quartz
printf("\nthickness of quartz is %d mm",l)
