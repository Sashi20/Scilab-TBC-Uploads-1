//OS: WINDOWS 10, SCILAB-6.0.2
//CHAPTER 9: ROTATION OF RIGID BODIES
//EX 9.4: THROWING A DISCUS
clc;
clear;
omega=10; //angular velocity in rad/s
alpha=50; //angular acceleration in rad/s^2
r=0.8; //radius in m
a_tan=r*alpha; //tangential acceleration in m/s^2
a_rad=(omega^2)*r; //radial acceleration in m/s^2
a=sqrt(a_tan^2+a_rad^2);
mprintf('Tangential acceleration: %f m/s^2',a_tan);
mprintf('\nRadial acceleration: %f m/s^2',a_rad);
mprintf('\nMagnitude of net acceleration: %f m/s^2',a);
