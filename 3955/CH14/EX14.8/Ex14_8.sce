//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 14: PERIODIC MOTION
//EX 14.8: A SIMPLE PENDULUM
clear;
clc;
g=9.8; //acceleration due to gravity on Earth in m/s^2
L=1; //length of pendulum in m
T=2*%pi*sqrt(L/g); //time period of pendulum
f=1/T; //frequency of pendulum in Hz
printf('Time period of pendulum: %f sec ',T);
printf('\nFrequency of pendulum: %f Hz',f);
