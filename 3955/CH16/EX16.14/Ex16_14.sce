//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.14: DOPPLER'S EFFECT 1: WAVELENGTHS
clc;
clear;
v=340; //speed of sound in air in m/s
f_s=300; //frquency of sound source(siren) in Hz
lambda=v/f_s; //wavelength of wave when source(siren) is at rest in m
printf('Wavelength of sound wave when source(siren) is at rest: %f m',lambda);
v_s=30; //speed of siren in m/s
lambda_infront=(v-v_s)/f_s; //wavelength of wave infront of siren in m
lambda_behind=(v+v_s)/f_s; //wavelength of wave behind of siren in m
printf('\nWavelength of wave infront of siren: %f m',lambda_infront);
printf('\nWavelength of wave behind the siren: %f m',lambda_behind);
