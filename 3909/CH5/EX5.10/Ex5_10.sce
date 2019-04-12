clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.10
//calculation of maximum percentage change in wavelength
//given data
h=6.6*10^-34; //Planck's constant
lambda=1; //wavelength (in Armstrong) of photon
lambda1=10; //wavelength (in Armstrong) of incident photons
m0=9.1*10^-31; //mass of electron (in kg)
c=3*10^8; //speed (in m/s) of light
//calculation
del_lambda_max=(2*h*10^10)/(m0*c); //maximum wavelength (in Armstrong)
p=del_lambda_max/lambda*100; //percent change in wavelength (in %)
p1=del_lambda_max/lambda1*100; //percent change in wavelength (in %)
printf("\npercent change in wavelength 1A is %1.1f percent",p)
printf("\npercent change in wavelength 10A is %1.2f percent",p1)
