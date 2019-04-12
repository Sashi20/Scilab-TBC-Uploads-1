clc;clear;
//OS windows 7
//scilab 6.0.1
//example 4.15
//calculation of coherent length,band width and line width of laser
//given data
lambda=650.0*10^-9; //wavelength (in m) of light
del_tau=0.5*10^-9; //time of pulses (in seconds)
c=3*10^8; //speed (in m/s) of light
//calculation
l_c=c*del_tau; //coherent length (in m)
del_nu=1/del_tau; //band width (in Hz)
del_lambda=lambda^2/c*del_nu; //line width (in m)
printf("\ncoherent length is %0.2f m",l_c)
printf("\nband width is %1.0e Hz",del_nu)
printf("\nline width is %0.3f Armstrong",del_lambda*10^10)
