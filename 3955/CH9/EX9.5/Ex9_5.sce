//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 9: ROTATION OF RIGID BODIES
//EX 9.5: DESIGNING A PROPELLER
clc;
clear;
omega=2400; //angular velocity of airplane propeller in rpm
omega=omega*(2*%pi/60);
v_tip=270; //maximum speed of tip of propeller in m/s
v_plane=75; //speed of plane in m/s
r=sqrt(v_tip^2-v_plane^2)/omega; //maximum propeller radius in m
a_rad=(omega^2)*r; //radial acceleration in m/s^2
mprintf('Maximum possible propeller radius: %f m',r);
mprintf('\nAcceleration of propeller tip: %f m/s^2',a_rad); //answer given in textbook is wrong
