//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 13: GRAVITATION
//EX13.4: GRAVITY ON MARS
clear;
clc;
w=3430; //weight on Earth in N
g=9.8; //acceleration due to gravity on Earth in m/s^2
m=w/g; //mass of lander in kg
m_M=6.42*10^23; //mass of mars in kg
G=6.67*10^-11; //universal gravitational constant in Nm^2/kg^2
R_M=3.4*10^6; //radius of mars in m
F_g=(G*m*m_M)/R_M^2; //Gravitational force on mars in N
g_M=F_g/m; //acceleration due to gravity on mars surface in m/s^2
printf('Gravitational force on mars surface: %f N',F_g); //answer given in textbook is wrong
printf('\nAcceleration due to gravity on mars surface: %f m/s^2',g_M);
