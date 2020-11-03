//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.5: INTENSITY OF SOUND WAVE IN AIR
clc;
clear;
T=293; //temperature of air in K
rho=1.2; //density of air in kg/m^3
p_max=3*10^-2; //pressure amplitude of wave in m
v=344; //speed of sound in air in m/s
I=(p_max^2)/(2*rho*v); //intensity of sound wave in air in W/m^2
printf('Intensity of sound wave in air in W/m^2: %e W/m^2',I);  //answer vary due to roundoff error
