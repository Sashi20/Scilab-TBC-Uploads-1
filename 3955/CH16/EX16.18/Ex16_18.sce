//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.18: DOPPLER'S EFFECT 5: A DOUBLE DOPPLER SHIFT
clc;
clear;
f_s=300; //frequency of sound wave in Hz
v=340; //speed of sound in air in m/s
v_s=-30; //speed of police car in m/s
f_w=(v/(v+v_s))*f_s //frequency reaching the warehouse in Hz
v_l=30; //speed of listener in m/s
f_l=((v+v_l)/v)*f_w; //frequency heard by driver in Hz
printf('Frequency reaching the warehouse: %f Hz',f_w); //answer vary due to roundoff error
printf('\nFrequency of sound that driver will hear reflected from warehouse: %f Hz',f_l); //answer vary due to roundoff error
