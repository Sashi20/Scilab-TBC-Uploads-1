//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
l = 5.4;    //(m)(Length of the string)
P = 98;     //(N)(Force)
omega = 3 * 2*%pi;   //(rad/s)(Angular velocity)

//Let I = Moment of inertia of the wheel about its axis.

//Work done in pulling the string:
omega = P * l;     //(N-m)                        -(i)

//Kinetic energy of the wheel:
//E = (1/2)*I*W^2 = 177.7 * I;       (N-m)    -(ii)

//Equating (i) and (ii):
I = omega/177.7;           //(kg-m^2)
printf("Moment of inertia of the wheel about its axis = %.2f kg-m^2",I);
