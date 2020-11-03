//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 14: PERIODIC MOTION
//EX 14.4: VELOCITY, ACCELERATION AND ENERGY IN SHM
clear;
clc;
k=200; //spring constant in N/m
m=0.5; //mass of block in kg
A=0.02; //amplitude in m
v_max=sqrt(k/m)*A; //max velocity in m/s
v_min=-v_max; //min velocity in m/s
printf('(a)Max velocity: %f m/s\nMin velocity: %f m/s',v_max,v_min);
a_max=(-k/m)*(-A); //max acceleration in m/s^2
a_min=-a_max; //min acceleration in m/s^2
printf('\n(b)Max acceleration: %f m/s^2\nMin acceleration: %f m/s^2',a_max,a_min);
x=A/2; //displacement of half the amplitude in m
v_x=-sqrt(k/m)*sqrt(A^2-x^2); //velocity at x in m/s
a_x=-(k/m)*x; //acceleration at x in m/s^2
printf('\n(c)Velocity at %f m: %f m/s',x,v_x);
printf('\nacceleration at %f m: %f m/s^2',x,a_x);
E=0.5*k*A^2; //total energy in J
U=0.5*k*x^2; //potential energy at x=A/2 in J
K=0.5*m*v_x^2; //kinetic energy at x=A/2 in J
printf('\n(d)Total energy at x=A/2: %f J',E);
printf('\nPotential energy at x=A/2: %f J',U);
printf('\nKinetic energy at x=A/2: %f J',K);


