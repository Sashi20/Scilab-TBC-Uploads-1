//OS: WINDOWS 10, SCILAB-6.0.2 
//CHAPTER 7 POTENTIAL ENERGY AND ENERGY CONSERVATION
//EX 7.1: HEIGHT OF BASEBALL FROM ENERGY CONSERVATION
clear;
clc;
m=0.145; //mass in kg
v_1=20; //initial velocity in m/sec
v_2=0; //final velocity in m/sec
g=9.8; //acceleration due to gravity in m/s^2
y1=0; //initial position in m
U_grav1=m*g*y1; //initial kinetic energy in J
K1=(1/2)*m*v_1^2; //initial kinetic energy in J
K2=(1/2)*m*v_2^2; //final kinetic energy in J
y2=(K1)/(m*g); //height in m, since(K1 + U_grav1 = K2+ U_grav2)
disp(y2,'Height of baseball in meters: ');
