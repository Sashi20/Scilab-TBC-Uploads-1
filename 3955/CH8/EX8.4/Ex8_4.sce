//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 8: MOMENTUM AND IMPULSE
//EX 8.4: RECOIL OF A RIFLE
clc;
clear;
m_R=3; //mass of rifle inkg
m_B=0.005; //mass of bullet in kg
v_Bx=300; //velocity of bullet in m/s
v_Rx=-(m_B/m_R)*v_Bx; //recoil velocity of rifle in m/s
p_Bx=m_B*v_Bx; //momentum of bullet in Kg.m/s
K_B=0.5*m_B*v_Bx^2; //kinetic energy of bulley in J
p_Rx=m_R*v_Rx; //momentum of rifle in Kg.m/s
K_R=0.5*m_R*v_Rx^2; //kinetic energy of rifle in J
mprintf('Final momentum of bullet: %f Kg.m/s',p_Bx);
mprintf('\nFinal kinetic energy of bullet: %f J',K_B);
mprintf('\nFinal momentum of rifle: %f Kg.m/s',p_Rx);
mprintf('\nFinal kinetic energy of rifle: %f J',K_R);


