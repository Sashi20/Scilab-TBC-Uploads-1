//OS-version - Windows 10
//Scilab-version - 6.0.2
clc
clear all
V = 30;       //(m/s)(Horizontal velocity of aircraft)
g = 9.8;      //(m/s^2)(Accn due to Gravity)

//Horizontal distance of the aircraft from the target when it released the bomb:
//Considering vertical motion of the bomb due to gravitational acceleration only;
u = 0;       //(Initial velocity)
s = 1000;    //(m)(Distance covered)

//Let t = Time required by bomb to reach the ground.

//Using s = u*t + (1/2)*g*t^2;
t = sqrt(s/((1/2)*g));       //(s)

H = V * t;    //(m)(Horizontal distance of the aircraft from the target when it released the bomb)
printf("Horizontal distance of the aircraft from the target when it released the bomb = %.2f m\n",H);    //The answers vary due to round off error

//Direction and velocity with which the bomb hits the target:

v = u + g*t;      //(m/s)(Final velocity)

//Angle which the bomb makes with vertical:
theta = atand(V/v);       //(Degrees)
printf("Angle which the bomb makes with vertical when it hits the target = %.2f degrees\n",theta);    //The answers vary due to round off error

//Resultant velocity:
R = sqrt(v^2 + V^2);       //(m/s)
printf("Resultant velocity with which the bomb hits the target = %.2f m/s",R);    //The answers vary due to round off error
