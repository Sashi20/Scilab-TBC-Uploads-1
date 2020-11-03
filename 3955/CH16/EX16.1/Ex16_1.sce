//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.1: AMPLITUDE OF A SOUND WAVE IN AIR
clc;
clear;
p_max=3*10^-2; //max pressure variation in Pa
f=1000; //frequency of sound wave in Hz
v=344; //speed of sound in m/s
Beta=1.42*10^5; //bulk modulus in Pa
omega=2*%pi*f; //angular frequency in rad/s
k=omega/v; //wave number
A=p_max/(Beta*k); //maximum displacement in m
printf('Amplitude of sound wave in air: %e m',A); //answer given in textbook is wrong
