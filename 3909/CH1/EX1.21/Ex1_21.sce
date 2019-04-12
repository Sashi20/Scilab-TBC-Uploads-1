clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.21
//calculation of wavelength of light used
//given data
D15=0.59; //diameter of 15th ring (in cm)
D5=0.336; //diameter of 5th ring (in cm)
R=100; //radius of curvature (in cm)
n=15; //fifteenth ring
n1=5; //fifth ring
//calculation
m=n-n1; //difference between the number of rings
lambda=(D15^2-D5^2)/(4*R*m); //wavelength of light used (in cm)
printf('\nwavelength of light is %d Armstrong',lambda*10^8)
//answer varies due to round off error
