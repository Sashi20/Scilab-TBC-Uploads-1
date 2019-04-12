clc;clear;
//OS windows 7
//scilab 6.0.1
//example 6.33
//calculation of velocity of Hydra in moving away from the earth
//given data
lambda=394; //wavelength (in nm) of absorbtion of light by ionized calcium atom
lambda_dash=475; //wavelength (in nm) of absorption line of Hydra
c=3*10^8; //speed (in m/s) of light
v_r=c*(lambda_dash^2-lambda^2)/(lambda_dash^2+lambda^2); //velocity of Hydra in moving away from the earth
printf("\nvelocity of Hydra in moving away from the earth is %1.2e m/s",v_r)
