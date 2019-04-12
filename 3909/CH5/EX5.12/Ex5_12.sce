clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.12
//calculation of angle of scattering
//given data
h=6.62*10^-34; //Planck's constant
c=3*10^8; //speed (in m/s) of light
E=150*10^3; //energy of incident X-ray photon (in eV)
E_dash=130*10^3; //energy of scattered photon (in eV)
m0=9.1*10^-31; //rest mass (in kg) of electron
//calculation
lambda=(h*c)/(E*1.6*10^-19); //wavelength (in m) of incident photons
lambda_dash=(h*c)/(E_dash*1.6*10^-19); //wavelength (in m) of scattered photon
theta=acosd(1-(lambda_dash-lambda)/(h/(m0*c))); //angle of scattering from Compton scattering formula
printf("\nangle of scattering is %2.1f degrees",theta)
//the answers vary due to round off error
