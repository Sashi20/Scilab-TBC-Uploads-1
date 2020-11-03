//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 8: MOMENTUM AND IMPULSE
//EX 8.7: A COMPLETELY INELASTIC COLLISION
clc;
clear;
m_A=0.5; //mass of A in kg
m_B=0.3; //mass of B in kg
v_A1x=2; //x-velocity of A before collision in m/s
K_A=0.5*m_A*v_A1x^2; //kinetic energy of A before collision in J
v_B1x=-2; //x-velocity of B before collision in m/s
K_B=0.5*m_B*v_B1x^2; //kinetic energy of B before collision in J
K1=K_A+K_B; //total kinetic energy before collision in J
v_2x=(m_A*v_A1x+m_B*v_B1x)/(m_A+m_B); //x-velocity after collision in m/s
K2=0.5*(m_A+m_B)*v_2x^2; //total kinetic energy after collision in J
mprintf('Common x-velocity after collision: %f m/s',v_2x);
mprintf('\nInitial kinetic energy of system: %f J',K1);
mprintf('\nFinal kinetic energy of system: %f J',K2);

