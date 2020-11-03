//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 1.5;     //(m)(Length of pendulum)
N = 30;      //(r.p.m)(Angular speed of the pendulum)
r = 0.5;     //(m)(Radius of the circle)
g = 9.8;     //(m/s^2)(Accn due to Gravity)

//Let theta = Angle which the string will make with the verticle.

//Angular velocity of the bob:
omega = (2*%pi*N)/60;     //(rad/s)

//tand(theta) = (W^2 * r)/g;
theta = atand((omega^2 * r)/g);
printf("Angle which the string will make with the verticle = %.2f degrees",theta);
