//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.4: SPEED OF SOUND IN AIR
clc;
clear;
T=293; //temperature of air in K
Gamma=1.4; //ratio of heat capacities in air
M=28.8*10^-3; //mean molar mass of air in kg/mol
R=8.314; //gas constant in J/K.mol
v=sqrt((Gamma*R*T)/M); //speed of sound in air in m/s
printf('Speed of sound in air at T=293K: %f m/s',v); //answer vary due to roundoff error
f=20; //min audible sound frequency in Hz
lambda=v/f; //max audible sound wavelength in m
printf('\nMaximum audible wavelength: %f m',lambda); //answer vary due to roundoff error
f=20000; //max audible sound frequency in Hz
lambda=v/f; //min audible sound wavelength in m
lambda=lambda*100; //min audible sound wavelength in cm
printf('\nMinimum audible wavelength: %f cm',lambda); //answer vary due to roundoff error

