//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
m = 2500;     //(kg)(Mass of elevator)
u = 0;        //(Initial velocity)
s = 35;       //(m)(Distance travelled)
t = 10;       //(s)(Time)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Cable tension:
//Let a = Constant acceleration of the elevator.
//Using s = u*t + (1/2)*a*t^2;
a = s/((1/2)*t^2);      //(m/s^2)

//Tension in the cable when the elevator is moving vertically downwards:
R = m * (g - a);       //(kN)
printf("Tension in the cable when the elevator is moving vertically downwards = %.2f kN\n",R/1000);

//Limits of cable tension:
//Cable tension when the elevator is moving vertically downwards with zero acceleration:
a = 0;       //(Acceleration)
R = m*(g - a);       //(kN)
printf("Cable tension when the elevator is moving vertically downwards with zero acceleration = %.2f kN\n",R/1000);

//Cable tension when the acceleration is maximum(i.e. 9.8 m/s^2):
a = 9.8;       //(m/s^2)
R = m * (g - a);     //(kN)
printf("Cable tension when the acceleration is maximum(i.e. 9.8 m/s^2) = %.2f",R/1000);
