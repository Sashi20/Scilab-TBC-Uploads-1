clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.29
//calculation of wavelength of lines and minimum grating width required to resolve
//given data
dlambda=0.5*10^-10; //difference between wavelength of lines (in m)
theta=10; //angle (in degrees) at which spectral line appears
dtheta=3/3600*%pi/180; //angle at which it appears higher by 3 second (in radians)
//calculation
lambda=tand(theta)*dlambda/dtheta; //wavelength (in m) of lines
lambda1=lambda+dlambda; //wavelength (in m) of light higher than the other wavelength
W=lambda^2/(dlambda*sind(theta)); //resolving power 
//result
printf("\nwavelength of one line is %0.1f Armstrong",lambda*10^10)
printf("\nwavelength of another line is %0.1f Armstrong",lambda1*10^10)
printf("\nresolving power is %0.3f",W)
//the first part of the answer varies due to round off error
//second part of the answer provided in the textbook is wrong
