//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 8: MOMENTUM AND IMPULSE
//EX 8.5: COLLISION ALONG A STRAIGHT LINE
clc;
clear;
m_A=0.5; //mass of A in kg
m_B=0.3; //mass of B in kg
v_A1x=2; //initial velocity of A in m/s
v_B1x=-2; //initial velocity of B in m/s
v_B2x=2; //final velocity of B in m/s
Px=(m_A*v_A1x)+(m_B*v_B1x); //initial total momentum in Kg.m/s
v_A2x=(Px-m_B*v_B2x)/m_A; //final velocity of A in m/s
mprintf('Final x velocity of glider A: %f m/s',v_A2x);
mprintf('\nChange in x velocity of A: %f m/s',(v_A2x-v_A1x));
mprintf('\nChange in x velocity of B: %f m/s',(v_B2x-v_B1x));
mprintf('\nChange in x momentum of A: %f Kg.m/s',m_A*(v_A2x-v_A1x));
mprintf('\nChange in x momentum of B: %f Kg.m/s',m_B*(v_B2x-v_B1x));




