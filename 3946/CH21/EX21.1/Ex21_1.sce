//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
omega0 = 0;    //(Initial angular velocity)
alpha = 0.5;     //(rad/sec^2)(Angular acceleration)
t = 10;    //(sec)(Time)

//Angular velocity of the flywheel:
omega = omega0 + alpha*t;     //(rad/sec)
printf("Angular velocity of the flywheel = %.2f rad/sec\n",omega);

//Angular displacement of the flywheel:
theta = omega0*t + (1/2)*alpha*t^2;        //(rad)
printf("Angular displacement of the flywheel = %.2f rad",theta);
