//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 0.6;      //(m)(Radius of wheel)
omega0 = 0;       //(Initial angular velocity)
alpha = 0.8;  //(rad/s^2)(Angular acceleration)
t = 5;        //(s)(Time)

//Angular velocity:
omega = omega0 + alpha*t;     //(rad/sec)

//Linear velocity:
v = r*omega;             //(m/s)
printf("Linear velocity of a point on its periphery = %.2f m/s",v);
