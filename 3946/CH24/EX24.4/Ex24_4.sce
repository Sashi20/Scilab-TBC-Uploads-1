//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 500;     //(kg)(Mass of vehicle)
u = 25;      //(m/s)(Initial velocity)
F = 200;     //(N)(Force)
t = 120;     //(s)(Time)

//(1) Velocity of vehicle when the force acts in the direction of motion:
a = F/m;     //(m/s^2)
v1 = u + a * t;       //(m/s)
printf("Velocity of vehicle when the force acts in the direction of motion = %.2f m/s\n",v1);

//(2) Velocity of the vehicle when the force acts in the opposite direction of motion:
a = -0.4;     //(m/s^2)
v2 = u + a * t;       //(m/s)
printf("Velocity of the vehicle when the force acts in the opposite direction of motion = %.2f m/s",v2);
