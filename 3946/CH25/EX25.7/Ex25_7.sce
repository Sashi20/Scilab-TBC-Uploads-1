//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m2 = 30;    //(kg)(Mass of the body lying on smooth plane)
alpha = 15;     //(Degrees)(Inclination of the plane with horizontal)
m1 = 20;    //(kg)(Mass of the body which hangs freely beyond the pulley)

//Acceleration with which the body will come down:
a = g * [m1 - m2*sind(alpha)]/(m1 + m2);      //(m/s^2)
printf("Acceleration with which the body will come down = %.2f m/s^2",a);
