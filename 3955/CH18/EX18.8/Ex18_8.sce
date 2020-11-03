//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 18: THERMAL PROPERTIES OF MATTER
//EX 18.8: CALCULATING MEAN FREE PATH
clc;
clear;
k=1.38*10^-23; //boltzman constant in J/K
T=300; //temperature of air in K
p=1.01*10^5; //pressure of air in Pa
r=2*10^-10; //radius of air molecule in m
lambda=(k*T)/(4*%pi*sqrt(2)*(r^2)*p); //mean free path of air molecule in m
v=484; //RMS speed of air molecule at T=300K (from Ex18.6)
t_mean=lambda/v; //mean free time of oxygen molecule in sec
printf('(a)Mean free path of air molecule at T=300K: %e m',lambda); //answer vary due to roundoff error
printf('\n(b)Mean free time of oxygen molecule at T=300K: %e sec',t_mean); //answer vary due to roundoff error


