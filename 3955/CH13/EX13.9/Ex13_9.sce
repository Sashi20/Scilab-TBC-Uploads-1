//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 13: GRAVITATION
//EX13.9: COMET HALLEY
clear;
clc;
distance_perihelion=8.75*10^7; //distance of comet halley from sun at perihelion in km
distance_aphelion=5.26*10^9; //distance of comet halley from sun at aphelion in km
a=(distance_perihelion+distance_aphelion)/2; //semi major axis in km
printf('Orbital semi major axis: %e km',a);
e=1-distance_perihelion/a; //eccentricity of ellipse
a=a*1000; //semi major axis in m
m_S=1.99*10^30; //mass of comet in kg
G=6.67*10^-11; //universal gravitational constant in Nm^2/kg^2
T=(2*%pi*a^(3/2))/sqrt(G*m_S); 
printf('\nEccentricity: %f ',e);
printf('\nTime period: %e sec',T);
