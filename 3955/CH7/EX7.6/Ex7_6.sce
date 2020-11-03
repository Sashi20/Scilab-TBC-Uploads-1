//OS: WINDOWS 10, SCILAB-6.0.2 
//CHAPTER 7 POTENTIAL ENERGY AND ENERGY CONSERVATION
//EX 7.6: AN INCLINED PLANE WITH FRICTION
clear;
clc;
m=12; //mass in kg
g=9.8; //acceleration due to gravity in ms^-2
v1=5; //initial speed in ms^-1
theta=30; //angle of inclination in degrees
s=1.6; //slant length in meter
y1=0; 
y2=s*sind(theta); //vertical height in meter
y3=0;
K1=0.5*m*(v1^2); //initial kinetic energy at bottom in J
U_grav1=0; //initial gravitational potential energy at bottom in J
U_grav2=m*g*y2; //gravitational potential energy at top in J
K2=0; ////final kinetic energy at top in J
W_other=(K2+U_grav2)-(K1+U_grav1); //work done by friction in J ()
f=W_other/s; //frictional force in N
W_other=(2*W_other); //work done by frictional force in part(b) in J
U_grav3=0;
K3=K1+U_grav1-U_grav3+W_other; //kinetic energy at bottom (K1+U_grav1+W_other=K3+U_grav3)
v3=sqrt((2*K3)/m); //speed at bottom of ramp in ms^-1
disp(abs(round(f)),'(a)Magnitude of frictional force in newton: ');
disp(v3,'(b)Speed at bottom of ramp in m/s: '); //answer vary due to roundoff error
