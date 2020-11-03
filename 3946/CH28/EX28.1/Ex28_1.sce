//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 5;     //(kg)(Mass of body)
r = 1.5;   //(m)(Radius of circle)
omega = 2;     //(rad/s)(Angular velocity of the body)

//Centrifugal force = F = m*W^2*r;
F = m * omega^2 * r;     //(N)
printf("Centrifugal force = %.2f N",F);
