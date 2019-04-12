clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.27
//calculation of distance between  10th and 20th rings
//given data
R1=1.0; //radius of curvature (in m)
R2=1.0; //another radius of curvature (in m)
lambda=600*10^-9; //wavelength of light (in m)
n=10; //order of ring
n_dash=20; //order of ring
//calculation
r10=sqrt((n*lambda*R1*R2)/(R1+R2)); //radius (in m) of 10th ring
r20=sqrt((n_dash*lambda*R1*R2)/(R1+R2)); //radius (in m) of 20th ring
d=r20-r10; //difference between 10th and 20th rings (in m)
printf('\ndifference between 10th and 20th rings is %0.3f mm',d*10^3) 
