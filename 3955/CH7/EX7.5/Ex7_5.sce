//OS: WINDOWS 10, SCILAB-6.0.2 
//CHAPTER 7 POTENTIAL ENERGY AND ENERGY CONSERVATION
//EX 7.5: A VERTICAL CIRCLE WITH FRICTION
clear;
clc;
m=25; //mass in kg
v1=0; //initial velocity in m/s^2
v2=6; //final velocity in m/s^2
R=3; //radius in meters
g=9.8; //acceleration due to gravity in m/s^2
K1=(1/2)*m*v1^2; //initial kinetic energy in J
U_grav1=m*g*R; //initial gravitational potential energy in J
K2=(1/2)*m*v2^2; //final kinetic energy in J
U_grav2=0; //final gravitational potential energy in J
W_other=(K2+U_grav2)-(K1+U_grav1); //work done by friction in J
disp(W_other,'Work done by friction in joules: ');
