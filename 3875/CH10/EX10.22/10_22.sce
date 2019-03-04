clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
K_b=1.38*10^-23 //Boltzmanns constant in  m^2 kg s^-2 K^-1
T=300 //Temperature in K
m=1.00878*1.66*10^-27 //mass of neutron in kg

//calculation
lambda=((h/sqrt(3*m*K_b*T))/10^-9) //converting from m to nm by dividing by 10^-9 ,wavelength in nm

mprintf("The de-Broglie wavelength is = %1.3f nm",lambda)
