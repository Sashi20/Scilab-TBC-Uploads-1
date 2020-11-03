//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 9: ROTATION OF RIGID BODIES
//EX 9.6: MOMENT OF INERTIA FOR DIFFERENT ROTATION AXES
clc;
clear;
m_i=[0.3 0.1 0.2] //in the order m_A=0.3, m_B=0.1, m_C=0.2 as given in textbook
omega=4; //angular velocity in rad/s
r_i=[0; 0.5; 0.4] //perpendicular distance of m_A, m_B, m_C from axis passing through center of A and perpendicular to plane of diagra respectively.
I_A=sum(m_i*r_i^2); //moment of inertia about axis passing through center of A
r_i=[0.4; 0; 0]; //perpendicular distance of m_A, m_B, m_C from axis passing through centers of B and C and perpendicular to plane of diagram respectively.
I_BC=sum(m_i*r_i^2)
K_A=0.5*I_A*omega^2;
mprintf('Moment of inertia about axis passing through center of A and perpendicular to plane: %f kg.m^2',I_A);
mprintf('\nMoment of inertia about axis passing through centers of B and C: %f kg.m^2',I_BC);
mprintf('\nkinetic energy of body if it rotates about axis passing through A with omega=4rad/s: %f J',K_A);
//answer vary due to roundoff error




