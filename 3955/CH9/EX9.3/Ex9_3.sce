//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 9: ROTATION OF RIGID BODIES
//EX 9.3: ROTATION WITH CONSTANT ANGULAR ACCELERATION
clc;
clear;
omega_0z=27.5; //initial angular velocity in rad/s
alpha_z=-10; //angular acceleration in rad/s^2
t=0.3; //time in sec
theta_0=0; //initial angle of PQ with x axis
omega_z=omega_0z+alpha_z*t;
theta=theta_0+omega_0z*t+0.5*alpha_z*t^2;
mprintf('\nangular velocity at t=0.3s: %f rad/s',omega_z); 
mprintf('\nAngle of PQ with x axis: %f rad or %f rev',theta,theta/(2*%pi));
