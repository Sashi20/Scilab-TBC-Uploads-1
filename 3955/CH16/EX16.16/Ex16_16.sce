//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.16: DOPPLER'S EFFECT 3: A MOVING LISTENER
clc;
clear;
f_s=300; //frequency of sound wave in Hz
v=340; //speed of sound in air in m/s
v_l=-30; //speed of siren in m/s
f_l=((v+v_l)/v)*f_s; //frequency of sound that listener will listen in Hz
printf('Frequency of sound that listener will listen: %f Hz',f_l); //answer in textbook is wrong
