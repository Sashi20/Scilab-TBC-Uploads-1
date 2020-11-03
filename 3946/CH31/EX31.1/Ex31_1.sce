//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 50;       //(kg)(Mass of the wheel)
r = 0.2;      //(m)(Radius of the wheel)
omega = 300;      //(r.p.m.)(Angular velocity)

//Moment of inertia of the circular wheel:
I = (1/2)*M*r^2;      //(kg-m^2)

//Angular velocity of the wheel:
omega = 300/60 * 2*%pi;    //(rad/s)(Converting velocity from r.p.m to rad/s)

//Kinetic energy of the rotating wheel:
E = (1/2)*I*omega^2;       //(J)
printf("Kinetic energy of the rotating wheel = %.2f J",E);    //The answers vary due to round off error
