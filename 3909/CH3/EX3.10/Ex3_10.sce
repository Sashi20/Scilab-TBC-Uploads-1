clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.10
//(i)to show if white light source (4000 Armstrong to 7000 Armstrong) is used, the second and third order spectra overlap (ii) calculation of angular separation of D1 and D2 lines 
//given data
N=15000; //number of lines per inch
dlambda=6000*10^-10; //average wavelength of light (in m)
lambda_v=4000*10^-10; //wavelength (in m) of violet light 
lambda_r=7000*10^-10; //wavelength (in m) of red light
n=2; //D2 line 
//calculation
a_plus_b=2.54/N*10^-2; //grating element (in m)
theta_2v=asind((2*lambda_v)/a_plus_b); //second order spectra of violet light
theta_2r=asind((2*lambda_r)/a_plus_b); //second order spectra of red light
theta_3v=asind((2*lambda_v)/a_plus_b); //second order spectra of violet light
format(16)
d=a_plus_b;
dtheta=(n*6*10^-10)/(sqrt(1-(n*dlambda/d)^2)*a_plus_b); //angular separation of D1 and D2 lines (in radians)
if theta_3v<theta_2r then
    disp("second and third order spectra overlap")
else
    disp("second and third order spectra do not overlap")
end
printf("\nangular separation of D1 and D2 lines is %0.4f radians",dtheta)

