//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
M = 25;       //(kg)(Mass of the machine gun)
m = 0.03;     //(kg)(Mass of the bullet)
v = 250;      //(Velocity of firing)

//Let V = Velocity with which the machine gun will recoil.
//MV = mv         //(Conservation of Energy)
V = (m * v)/M;    //(m/s)
printf("Velocity with which the machine gun will recoil = %.2f m/s",V);
