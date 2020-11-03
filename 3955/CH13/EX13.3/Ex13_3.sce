//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 13: GRAVITATION
//EX13.3: SUPERPOSITION OF GRAVITATIONAL FORCES
clear;
clc;
m1=1*10^30; //mass of small star in kg
m2=8*10^30; //mass of large stars in kg
m3=m2; 
G=6.67*10^-11; //universal gravitational constant in Nm^2/kg^2
theta1=45; //angle of force F1 with + x axis in degrees
theta2=0; //angle of force F2 with + x axis in degrees
r=2*10^12; //length of 2 equal side of right isoceles star triangle system in m
F1=(G*m1*m2)/(2*r^2); //magnitude of gravitational force on small star due to second large star in N
F2=(G*m1*m3)/(r^2); //magnitude of gravitational force on small star due to third large star in N
F1x=F1*cosd(theta1); //x component of force F1 in N
F1y=F1*sind(theta1); //y component of force F1 in N
F2x=F2*cosd(theta2); //x component of force F2 in N
F2y=F2*sind(theta2); //y component of force F2 in N
Fx=F1x+F2x; //x component of net force F in N
Fy=F1y+F2y; //y component of net force F in N
F=sqrt(Fx^2+Fy^2); //magnitude of net force F in N
theta=atand(Fy/Fx); //angle of net force F with +ve x axix
printf('Total gravitational force exerted on small star: %e N',F); //answer vary due to roundoff error
printf('\nAngle of force F with +ve x axix: %f degrees',theta); //answer vary due to roundoff error
