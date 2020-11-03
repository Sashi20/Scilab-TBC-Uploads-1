//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 14: PERIODIC MOTION
//EX 14.2: ANGULAR FREQUENCY, FREQUENCY AND PERIOD IN SHM
clear;
clc;
F_x=-6; //given spring force in N
x=0.03; //displacement in m
k=-F_x/x; //spring constant in N/m
m=0.5; //mass of block in kg
omega=sqrt(k/m); //angular frequency in rad/s
f=omega/(2*%pi); //frequency in Hz
T=1/f; //time period of SHM in sec
printf('(a)Spring constant: %f N/m',k);
printf('\n(b)Angular frequency: %f rad/s \nFrequency: %f Hz \nTime period: %f sec',omega,f,T); //answer vary due to roundoff error
