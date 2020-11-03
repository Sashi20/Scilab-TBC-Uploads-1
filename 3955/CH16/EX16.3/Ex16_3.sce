//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.3: WAVELENGTH OF SONAR WAVES
clc;
clear;
rho=1000; //density of water in kg/m^3
Beta=2.18*10^9; //bulk modulus of water in Pa
f=262; //frequency of sound wave in Hz
v=sqrt(Beta/rho); //speed of sound wave in water in m/s
lambda=v/f; //wavelength of sound wave in water in m
printf('Wavelength of sound wave in water: %f m',lambda); //answer vary due to roundoff error
