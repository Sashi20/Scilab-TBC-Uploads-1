//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 2000;        //(kg)(Mass of vehicle)
Fr = 50 * 2;     //(N)
u = 10;          //(m/s)(Initial velocity of the vehicle)
alpha = asind(1/80);    //(Degrees)(Angle of inclination)
t = 100;         //(s)(Time)
g = 9.8;         //(m/s^2)(Accn due to Gravity)

//Force due to inclination:
Fi = m * g * sind(alpha);      //(N)

//Net force available to move the vehicle:
F = Fi - Fr;         //(N)

a = F/m;     //(m/s^2)

//Speed of the train after running down the incline:
v = (u + a * t) * (3600/1000);     //(km.p.h.)

printf("Speed of the train after running down the incline = %.2f km.p.h.",v);
