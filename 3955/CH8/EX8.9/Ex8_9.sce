//OS: WINDOWS 10; SCILAB- 6.0.2
//CHAPTER 8: MOMENTUM AND IMPULSE
//EX 8.9: AN AUTOMOBILE COLLISION
clc;
clear;
m_C=1000; //mass of car in kg
m_T=2000; //mass of truck in kg
M=m_C+m_T; //total combined mass of car and truck in kg
v_Cx=0; //velocity of car before collision in x dir in m/s
v_Tx=10; //velocity of truck before collision in x dir in m/s
v_Cy=15; //velocity of car before collision in y dir in m/s
v_Ty=0; //velocity of truck before collision in y dir in m/s
P_x=m_C*v_Cx+m_T*v_Tx; //momentum of system before collision in x dir in Kg.m/s
P_y=m_C*v_Cy+m_T*v_Ty; //momentum of system before collision in y dir in Kg.m/s
P=sqrt(P_x^2+P_y^2); //magnitude of momentum of system before collision in Kg.m/s
theta=atand(P_y/P_x); //angle of momentum with +ve x axis
V=P/M; //magnitude of velocity after collision in m/s
mprintf('Magnitude of required velocity: %f m/s',V); //answer vary due to roundoff error
mprintf('\nAngle of velocity with +ve x axis in degrees: %f',theta); //answer vary due to roundoff error
