//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 4: NEWTON'S LAWS OF MOTION
//EXAMPLE 4.1: SUPERPOSITION OF FORCES
clc;
clear;
F1=250; //magnitude of force F1 in Newton
F2=50; //magnitude of force F2 in Newton
F3=120; //magnitude of force F3 in Newton
theta_1=127; //angle of force F1 with +ve x axix in degrees
theta_2=0; //angle of force F2 with +ve x axix in degrees
theta_3=270; //angle of force F3 with +ve x axix in degrees
F1x=F1*cosd(theta_1); //x component of force F1 in newton
F1y=F1*sind(theta_1); //y component of force F1 in newton
F2x=F2*cosd(theta_2); //x component of force F2 in newton
F2y=F2*sind(theta_2); //y component of force F2 in newton
F3x=F3*cosd(theta_3); //x component of force F3 in newton
F3y=F3*sind(theta_3); //y component of force F3 in newton
Rx=F1x+F2x+F3x; //x component of net force in newton
Ry=F1y+F2y+F3y; //y component of net force in newton
R=sqrt(Rx^2+Ry^2);
theta=atand(Ry/Rx);
disp(floor(R),'Magnitude of net force in newton: ');
disp(180+floor(theta),'Angle of net force with positive x axis in degrees: ');
