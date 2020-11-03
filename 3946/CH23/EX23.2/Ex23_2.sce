//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 1;      //(m)(Amplitude)
T = 2;      //(s)(Periodic time)
t = 0.4;    //(s)(Time taken by the body from extreme position)

//Angular velocity of the body:
omega = (2 * %pi)/T;        //(rad/s)

//Displacement of the body after 0.4 sec from the extreme position(or 0.1 second from the mean position):
t = 0.1;                  //(s)
y = r * cos(omega*t);        //(m)

//Velocity of the body:
v = omega * sqrt(r^2 - y^2);     //(m/s)
printf("Velocity of the body = %.2f m/s\n",v);    //The answers vary due to round off error

//Acceleration of the body:
a = omega^2 * y;                 //(m/s^2)
printf("Acceleration of the body = %.2f m/s^2",a);    //The answers vary due to round off error
