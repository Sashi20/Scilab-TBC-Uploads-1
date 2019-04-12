clc;clear;
//OS windows 7
//scilab 6.0.1
//example 2.15
//calculation of wavelengths in visible region for which it will act as (i)HW plate (ii)QW plate
//given data
l=0.25*10^-3; //thickness (in m)
mu_e_minus_mu_o=0.009; //difference between the refractive indices of ordinary  and extraordinary light
n1=3
n2=4
n3=6
n4=7
n5=8
n6=9
//calculation
//for HWP
lambda1=(2*l*(mu_e_minus_mu_o))/(2*n1+1)
lambda2=(2*l*(mu_e_minus_mu_o))/(2*n2+1)
//for QWP
lambda3=(4*l*(mu_e_minus_mu_o))/(2*n3+1)
lambda4=(4*l*(mu_e_minus_mu_o))/(2*n4+1)
lambda5=(4*l*(mu_e_minus_mu_o))/(2*n5+1)
lambda6=(4*l*(mu_e_minus_mu_o))/(2*n6+1)
printf("\n(a)visible wavelength when n=3 is %d Armstrong",lambda1*10^10)
printf("\n(a)visible wavelength when n=4 is %d Armstrong",lambda2*10^10)
printf("\n(b)visible wavelength when n=6 is %d Armstrong",lambda3*10^10)
printf("\n(b)visible wavelength when n=7 is %d Armstrong",lambda4*10^10)
printf("\n(b)visible wavelength when n=8 is %d Armstrong",lambda5*10^10)
printf("\n(b)visible wavelength when n=9 is %d Armstrong",lambda6*10^10)
//the answer (b) when n=9 varies due to round off error
