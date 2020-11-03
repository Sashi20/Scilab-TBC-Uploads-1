//OS: WINDOWS 10, SCILAB-6.0.2 
//CHAPTER 7 POTENTIAL ENERGY AND ENERGY CONSERVATION
//EX 7.4: SPEED AT THE BOTTOM OF A VERTICAL CIRCLE
clear;
clc;
m=25; //total mass of throcky and skateboard in kg
R=3; //radius of circle in meters
g=9.8; //acceleration due to gravity in m/s^2
w=m*g //total weight of throcky and skateboard in N
K1=0; //initial kinetic energy in J
U_grav1=m*g*R; //initial gravitational potential energy in J
U_grav2=0; //final gravitational potential energy in J
v2=sqrt(2*g*R); //from energy conservation law(K1 +U_grav1 = K2 + U_grav2)
a_rad=(v2^2)/R; //centripetal acceleration
n=m*a_rad+w; //normal reaction
disp(v2,'Speed at the bottom of the ramp in m/s: ');
disp(n,'Normal force at the bottom of ramp in Newton: ');
