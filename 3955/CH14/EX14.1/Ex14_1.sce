//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 14: PERIODIC MOTION
//EX 14.1: Period, frequency and angular frequency
clear;
clc;
f=6.7*10^6; //frequency of ultrasonic transducer
T=1/f; //time period in sec
omega=2*%pi*f; //angular frequency in rad/s
printf('Time period: %e sec',T);
printf('\nAngular frequency: %e rad/s',omega);
