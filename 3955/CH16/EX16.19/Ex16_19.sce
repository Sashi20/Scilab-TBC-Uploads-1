//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 16: SOUND AND HEARING
//EX 16.19: SONIC BOOM FROM A SUPERSONIC AIRPLANE
clc;
clear;
M=1.75; //Mach number
alpha=asin(1/M); //angle of shock cone
v=320; //speed of sound in air in m/s
v_s=v*M; //speed of supersonic plane in m/s
altitude=8000; //altitude of plane in m
t=altitude/(tan(alpha)*v_s); //time after which we will hear sonicboom after plane passes overhead in sec
printf('Time after which we will hear sonicboom after plane passes overhead: %f sec',t);
