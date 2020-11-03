//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 13: GRAVITATION
//EX13.8: KEPLER'S THIRD LAW
clear;
clc;
m_S=1.99*10^30; //mass of asteroid in kg
T=4.62; //given time period in years
T=T*365.2425*24*3600; //time period in sec
G=6.67*10^-11; //universal gravitational constant in Nm^2/kg^2
a=((G*m_S*T^2)/(4*%pi^2))^(1/3);
printf('Semi major axis of orbit: %e m',a);
