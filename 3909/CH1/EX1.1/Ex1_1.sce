clc;clear;
//OS windows 7
//scilab 6.0.1
//example 1.1
//calculation of position of zero order and twentieth order fringe
//given data
lambda=6000; //wavelength (in Armstrong) of light
lambda1=5000; //new wavelength (in Armstrong) of light
n=10; //order of maxima
n1=20; //order of maxima
D=1; //assuming D=1 for simplicity of calculation
d=1; //assuming d=1 for simplicity of calculation
y0=12.34; //position of zero order maxima
y10=14.73; //position of tenth order maxima
//calculation
y_bn=y10-y0; //difference between position of tenth order maxima and zero order maxima (in mm)
y_bn_dash=y_bn*(n1*lambda1*(D/d))/(n*lambda*(D/d)); //position of central bright fringe (in mm)
y0_dash=y0; //position (in mm) of zero order fringe
y_b20_dash=y0_dash+y_bn_dash; //position (in mm) of twentieth order fringe
printf('\nposition of zero order fringe is %0.2f mm',y0_dash)
printf('\nposition of twentieth order fringe is %0.2f mm',y_b20_dash)
//the answers vary due to round off error
