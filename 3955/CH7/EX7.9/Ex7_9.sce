//OS: WINDOWS 10, SCILAB-6.0.2 
//CHAPTER 7: Potential Energy and Energy Conservation
//EXAMPLE: 7.9: Motion with gravitational, elastic, and friction forces
clear;
clc;
m=2000; //mass in kg
g=9.8; //accleration due to gravity in m/s^2
v1=4; //initial velocity in ms^-1
K1=0.5*m*v1^2; //initial kinetic energy in J
K2=0; //final kinetic energy in J
y1=0; //initial position in m
Ugrav=0; //initial gravitational potential energy
Uel=0; //initial elastic potential energy in J 
U1=Ugrav+Uel; //initial total energy in J
y2=-2; //final position in m
U2=m*g*y2; //final gravitational potential energy in J
f=17000; //frictional force in N
W_other=f*y2; //work done by friction in J
k=2*(K1+W_other-m*g*y2)/y2^2; //spring constant in N/m (K1+U1+W_other=K2+U2)
disp(k,'spring constant of spring in N/m: ');
