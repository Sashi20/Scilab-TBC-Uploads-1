//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
v = 20;     //(m/s)(Linear velocity)
r = 0.375;  //(m)(Radius)
s = 20;     //(m)(Distance travelled by the car)

//Angular retardation of the wheel:
omega = v/r;     //(rad/sec)

//Let a = Linear retardation of the wheel.
//v^2 = u^2 + 2*a*s;

a = -v^2/(2*s);     //(m/s^2)

//Angular retardation:
alpha = a/r;        //(rad/sec^2)
printf("Angular retardation of the wheel = %.2f rad/sec^2",alpha);    //The answers vary due to round off error
