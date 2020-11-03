//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 9: ROTATION OF RIGID BODIES
//EX 9.7: AN UNWINDING CABLE 1
clc;
clear;
m=50; //mass in kg
R=0.12/2; //radius in m
F=9; //force in N
s=2; //distance in m
W_other=F*s; //work done in J
I=0.5*m*R^2; //moment of inertia in kg.m^2
omega=sqrt((2*W_other)/I); //final angular velocity in rad/s
v=R*omega; //linear velocity in m/s
mprintf('Final angular speed: %f rad/s',omega);
mprintf('\nFinal linear velocity: %f m/s',v);
