clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.30
//calculation of shift in the wavelength
//given data
v=6.12*10^7; //speed (in m/s) of a distant galaxy receding from earth
c=3*10^8; //speed (in m/s) of light
lambda0=500; //wavelength (in nm) of green spectral line
//calculation
v_by_c=v/c
lambda=lambda0*sqrt((1+v/c)/(1-v/c)); //wavelength (in nm)
s=round(lambda-lambda0); //shift in wavelength (in nm)
printf("\nshift in the wavelength is %d nm",s)
