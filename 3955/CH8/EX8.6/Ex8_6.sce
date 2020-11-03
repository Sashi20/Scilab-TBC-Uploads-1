//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 8: MOMENTUM AND IMPULSE
//EX 8.6: COLLISION IN A HORIZONTAL PLANE
clc;
clear;
m_A=20; //mass of A in kg
m_B=12; //mass of B in kg
alpha=30; //angle between v_A1 and v_A2 in degrees
v_A1x=2; //velocity of A before collision in x dir in m/s
v_A1y=0; //velocity of A before collision in y dir in m/s
v_B1x=0; //velocity of B before collision in x dir in m/s
v_B1y=0; //velocity of B before collision in y dir in m/s
v_A2=1; //speed of A after collision in m/s 
v_A2x=v_A2*cosd(alpha); //velocity of A after collision in x dir in m/s
v_A2y=v_A2*sind(alpha); //velocity of A after collision in y dir in m/s
v_B2x=(m_A*v_A1x+m_B*v_B1x-m_A*v_A2x)/m_B; //velocity of B after collision in x dir in m/s
v_B2y=(m_A*v_A1y+m_B*v_B1y-m_A*v_A2y)/m_B; //velocity of B after collision in y dir in m/s
v_B2=sqrt(v_B2x^2+v_B2y^2); //speed of B after collision in m/s
Beta=atand(v_B2y/v_B2x); //angle between v_B1 and v_B2 in degrees
mprintf('Speed of B after collision: %f m/s',v_B2); //answer given in textbook is wrong
mprintf('\nAngle with +ve x axis in degrees: %f',Beta); //answer given in textbook is wrong
