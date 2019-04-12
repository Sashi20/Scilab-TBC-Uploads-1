clc;clear;
//OS windows 7
//scilab 6.0.1
//example 5.11
//calculation of (a)Compton shift (b)the energy imparted to recoil electron in joules
//given data
m0=9.1*10^-31; //rest mass (in kg) of electron
c=3*10^8; //velocity (in m/s) of light
h=6.6*10^-34; //Planck's constant (in Js)
theta=90; //angle (in degrees) of scattering
lambda=1*10^-10; //wavelength (in m)
//calculation
del_lambda=h/(m0*c)*(1-cosd(theta)); //wavelength (in m)
lambda_dash=lambda+del_lambda; //Compton shift (in m)
K=h*c*(1/lambda-1/lambda_dash); //recoil energy of electron (in Joules)
printf("\n(a)Compton shift is %1.5f Armstrong",lambda_dash*10^10)
printf("\n(b)recoil energy of electron is %1.3e Joule",K)
//the answers vary due to round off error
