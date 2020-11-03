////OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
u = -12;      //(m/s)(Velocity of the balloon when the packet is dropped)
t = 2;        //(s)(Time taken)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Velocity of the packet after 2 sec:
v = u + g*t;      //(m/s)
printf("Velocity of the packet after 2 sec = %.2f m/s",v);
