clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.13
//calculation of wavelength of scattered gama rays at 90 degree and energy and direction of recoil electron of Al atom
//given data
h=6.6*10^-34; ////Planck's constant (in Js)
c=3*10^8; //speed (in m/s) of light
E=450*10^3; //energy of gama rays (in J)
theta=90; //angle (in degree) of scattering
m0=9.1*10^-31; //mass of electron (in kg)
//calcultion
lambda=(h*c)/(E*1.6*10^-19); //wavelength (in m) of incident photon
lambda_dash=lambda+h/(m0*c)*(1-cosd(theta)); //wavelength (in m) from Compton formula
E_dash=(h*c)/(lambda_dash*1.6*10^-19); //energy (in eV) of scattered photon
E_k=E-E_dash; //energy of recoil electron 
printf("\nwavelength of scattered gama rays at 90 degree is %1.5f Armstrong",lambda_dash*10^10)
printf("\nenergy of recoil electron is %d keV",E_k*10^-3)
//the first part of the answer varies due to round off error
