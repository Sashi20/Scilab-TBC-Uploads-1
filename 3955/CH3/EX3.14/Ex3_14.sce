//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 3: MOTION IN 1 OR 2 DIMENTIONS
//Ex 3.14: FLYING IN A CROSSWIND
clear;
clc;
v_pa=240; //speed of plane wrt to air in km/h
v_ae=100; //speed of air wrt to Earth in km/h
v_pe=sqrt((v_pa)^2+(v_ae)^2); //speed of plane wrt to Earth
alpha=atand(v_ae/v_pa); //angle with vertical axis(North axis) in degrees
mprintf('Velocity of airplane relative to Earth: %d km/h',v_pe);
mprintf('\nDirection: %f degrees East of North',alpha); //answer vary due to roundoff error
