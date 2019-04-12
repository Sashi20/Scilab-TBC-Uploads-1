clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.16
//to show that the energy which a photon must have so that it may transfer half of its energy to electron at rest is about 256 keV in Compton scattering experiment
//given data
theta=180; //angle (in degree) of scattering
h=6.62*10^-34; ////Planck's constant (in Js)
c=3*10^8; //speed (in m/s) of light
m0=9.1*10^-31; //mass of electron (in kg)
//calculation
lambda_max=h/(m0*c)*(1-cosd(theta)); //maximum value of wavelength (in m)
hnu_min=round((h*c)*10^-3/((1.6*10^-19)*lambda_max)); //energy of photon (in keV)
printf("\nenergy of photon is %d keV",hnu_min)
//the answer provided in the textbook is wrong
