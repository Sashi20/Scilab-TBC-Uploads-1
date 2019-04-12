clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.9
//calculation of wavelength of scattered photon and recoil energy of the electron
//given data
lambda=0.3*10^-10; //wavelength (in m) of X-ray photon
h=6.6*10^-34; //Planck's constant (in Js)
m0=9.1*10^-31; //mass of electron (in kg)
theta=60; //angle (in degree) of scattering
c=3*10^8; //speed (in m/s) of light
//calculation
lambda0=h/(m0*c); //Compton wavelength (in m)
lambda_dash=lambda+h/(m0*c)*(1-cosd(theta)); //wavelength of scattered photon (in m)
E_k=h*c*(lambda_dash-lambda)/(lambda*lambda_dash); //recoil energy of the electron (in J)
printf("\nwavelength of scattered photon is %1.5f Armstrong",lambda_dash*10^10)
printf("\nrecoil energy of the electron is %1.1f keV",E_k/(1.6*10^-19*10^3))
//the first part of answer varies due to round off error
