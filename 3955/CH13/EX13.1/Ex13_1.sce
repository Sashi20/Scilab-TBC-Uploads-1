//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 13: GRAVITATION
//EX13.1: CALCULATING GRAVITATIONAL FORCE
clear;
clc;
m1=0.5; //mass in kg
m2=0.01; //mass in kg
r=0.05; //distance between masses in m
G=6.67*10^-11; //universal gravitational constant in Nm^2/kg^2
Fg=(G*m1*m2)/r^2; //Gravitational force in N
mprintf('Gravational force: %e N',Fg);
