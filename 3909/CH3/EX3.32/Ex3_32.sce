clc;clear;
//OS windows 7
//scilab 6.0.1
//example 3.32
//calculation of (i)dispersion (ii)resolving power (iii)smallest difference in wavelength resolved and when half the ruling is covered
//given data
a_plus_b=10^-2/5000; //number of lines per m
lambda=5000*10^-10; //wavelength (in m)
dlambda=0.1*10^-10; //difference of wavelengths (in m)
n=2; //order of diffraction
N=5000*5; //number of lines
//calculation
dtheta=(n*dlambda)/sqrt(a_plus_b^2-n^2*lambda^2); //dispersion (in radian)
RP=n*N; //resolving power
d_lambda=lambda/(n*N); //smallest difference in wavelength resolved (in m)
//when half the ruling is covered
N_dash=50000/2; //number of lines
RP_dash=RP/2; //resolving power
d_lambda_dash=lambda/(n*N_dash); //difference in wavelength (in m)
dtheta_dash=2*2.38; //dispersion (in minutes) since the value of dispersion is 2.38 in minutes
printf("\n(i)dispersion is %1.2e rad",dtheta)
printf("\n(ii)resolving power is %d",RP)
printf("\n(iii)smallest difference in wavelength resolved is %1.1f Armstrong",d_lambda*10^10)
printf("\n(i)resolving power when half the ruling is covered is %d",RP_dash)
printf("\n(ii)difference in wavelength is when half the ruling is covered is %1.1f Armstrong",d_lambda_dash*10^10)
printf("\n(iii)dispersion when half the ruling is covered is %1.2f minutes",dtheta_dash)
//the answer provided for difference in wavelength is when half the ruling is covered is wrong
