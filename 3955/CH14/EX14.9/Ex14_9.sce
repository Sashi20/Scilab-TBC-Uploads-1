//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 14: PERIODIC MOTION
//EX 14.9: PHYSICAL PENDULUM VS PHYSICAL PENDULUM
clear;
clc;
L=1; //length of stick in m
g=9.8; //acceleration due to gravity on Earth in m/s^2
T=2*%pi*sqrt((2*L)/(3*g)); //time period of physical pendulum in sec
printf('Time period of physical pendulum: %f sec',T);
