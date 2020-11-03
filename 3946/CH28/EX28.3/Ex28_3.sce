//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 0.25;     //(kg)(Mass of ball)
r = 2;        //(m)(Length of string or radius of circle)
F = 25;       //(N)(Maximum tension in the string)

//Let omega = Maximum angular velocity at which the ball can be rotated.

//F = m*W^2*r;
omega = sqrt(F/(m*r));     //(rad/s)
printf("Maximum angular velocity at which the ball can be rotated = %.2f rad/s",omega);
