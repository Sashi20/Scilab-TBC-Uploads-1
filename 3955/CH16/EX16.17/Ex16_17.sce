//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.17: DOPPLER'S EFFECT 4: MOVING SOURCE, MOVING LISTENER
clc;
clear;
f_s=300; //frequency of sound wave in Hz
v=340; //speed of sound in air in m/s
v_l=15; //speed of listener in m/s
v_s=45; //speed of source in m/s
f_l=((v+v_l)/(v+v_s))*f_s; //frequency of sound that listener will listen in Hz
printf('Frequency of sound that listener will listen: %f Hz',f_l); //answer vary due to roundoff
