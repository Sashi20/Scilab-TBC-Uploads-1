clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.20
//calculation of diameter of 25th and 37th bright rings and wavelength of light
//given data
D_n=0.314; //diameter of 5th bright ring (in cm)
D_n1=0.584; //diameter of 16th bright ring (in cm)
R=120; //radius of curvature (in cm)
n=5; //number of bright ring
n1=16; //number of bright ring
n2=25; //number of bright ring
n3=37; //number of bright ring
//calculation
m=n1-n; //difference between the number of bright rings
lambda=(D_n1^2-D_n^2)/(4*m*R); //wavelength of light used (in cm)
r_b25=sqrt((n2-1/2)*lambda*R); //diameter of 25th ring (in cm)
r_b37=sqrt((n3-1/2)*lambda*R); //diameter of 37th ring (in cm)
printf('\nwavelength of light used is %0.2f Armstrong',lambda*10^8)
printf('\ndiameter of 25th ring is %0.2f mm',r_b25*10)
printf('\ndiameter of 37th ring is %0.2f mm',r_b37*10)
//answer provided in the textbook is wrong
