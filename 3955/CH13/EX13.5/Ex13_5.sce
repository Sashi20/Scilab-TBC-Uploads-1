//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 13: GRAVITATION
//EX13.5: FROM THE EARTH TO MOON
clear;
clc;
m_E=5.97*10^24; //mass of Earth in kg
G=6.67*10^-11; //universal gravitational constant in Nm^2/kg^2
R_E=6.38*10^6; //radius of Earth in m
v_1=sqrt(G*m_E/R_E);
printf('Required muzzle speed to go to height of Earth radius: %f m/s',v_1);
v_1=sqrt(2*G*m_E/R_E); //escape speed in m/s (from energy conservation K1+U1=K2+U2; in this case K2=U2=0)
printf('\n Escape speed: %f m/s',v_1); //answer given in textbook is wrong
