//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 14: PERIODIC MOTION
//EX 14.7: MOLECULAR VIBRATION
clear;
clc;
U_0=1.68*10^-21; //potential energy at equilibrium distance in Ar atom in J
R_0=3.82*10^-10; //equilibrium distance on Ar atom in m
m=6.63*10^-26; //mass of Ar atom in kg
k=(72*U_0)/R_0^2; //force constant in N/m
f=(1/(2*%pi))*sqrt(k/m); //frequency of SHM
printf('Frequency of oscillations: %e Hz',f);
