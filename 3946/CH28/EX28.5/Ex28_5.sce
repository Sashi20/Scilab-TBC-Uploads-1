//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
r = 3;          //(m)(Radius of spherical cage)
m = 750;        //(kg)(Mass of motor cycle and rider)
g = 9.8;        //(m/s^2)(Accn due to gravity)

//Let v = Least velocity of the motor cyclist.

//Centrifugal force = F = (m*v^2)/r = 250*v^2

//In order to maintain the contact with the highest point of the cage, the centrifugal force must be equal to the weight of the motor cycle and the rider.
//250*v^2 = m*g;
v = sqrt((m*g)/250);     //(m/s)
printf("Least velocity of the motor cyclist = %.2f m/s",v);
