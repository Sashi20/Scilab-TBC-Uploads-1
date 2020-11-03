//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 14: PERIODIC MOTION
//EX 14.6: VERTICAL SHM IN AN OLD CAR
clear;
clc;
m=1000; //mass of car in kg
F_x=980; //magnitude of force in N
x=-2.8*10^-2; //given compression of shockers in m
k=-F_x/x; //spring constant of shocker spring in N/m
T=2*%pi*sqrt(m/k); //Time period of SHM
f=1/T; //frequency of SHM
printf('Time period of SHM: %f sec',T); //answer given in textbook is wrong
printf('\nFrequency of SHM: %f Hz',f); //answer given in textbook is wrong

