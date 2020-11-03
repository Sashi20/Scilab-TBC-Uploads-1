//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 100;    //(kg)(Mass of cylinder)
r = 0.5;    //(m)(Radius of the cylinder)
m = 10;     //(kg)(Mass of the block)
t = 2;      //(s)(Time)
g = 9.8;    //(m/s^2)(Accn due to Gravity)
omega0 = 0;     //(Initial angular velocity)

//Linear acceleration of the solid cylinder:
a = (2*m*g)/(2*m + M);     //(m/s^2)

//Angular acceleration:
alpha = a/r;              //(rad/s^2)

//Angular velocity of the cylinder 2 seconds after the motion:
omega = omega0 + alpha*t;         //(rad/s)
printf("Angular velocity of the cylinder 2 seconds after the motion = %.2f rad/s",omega);    //(The answers vary due to round off error)
